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
}
