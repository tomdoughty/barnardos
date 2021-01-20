<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Control\Email\Email;
use SilverStripe\ORM\ArrayList;
class DashboardPageController extends PageController
{
  private static $allowed_actions = [
    'Form'
  ];

  protected function init()
  {
    parent::init();
  }

  public function Programmes()
  {
    $programs = ArrayList::create();

    foreach (ProgrammePage::get() as $page) {
      if ($page->canView()) 
      {
        $programs->push($page);
      }
    }

    return $programs;
  }

  public function Form()
  {
    $fields = FieldList::create(
      TextField::create('Name', 'Name'),
      TextField::create('Email', 'Email'),
      TextareaField::create('Message', 'Message')
    );

    $actions = FieldList::create(
      FormAction::create('Submit', 'Submit')
    );

    $form = Form::create($this, 'Form', $fields, $actions);
    $form->setTemplate('Forms/Form');

    return $form;
  }

  public function Submit($data, $form)
  {
    $email = Email::create();

    $email->setTo('thomashdoughty@gmail.com');
    $email->setFrom($data['Email']);
    $email->setSubject('Contact Message from {$data["Name"]}');
    $email->setBody('
      <p><strong>Name:</strong> {$data["Name"]}</p> 
      <p><strong>Message:</strong> {$data["Message"]}</p> 
    ');
    $email->send();

    $form->sessionMessage('Saved!', 'Your enquiry has been sent, we will be in touch as soon as possible.');
    return $this->redirectBack();
  }
}
