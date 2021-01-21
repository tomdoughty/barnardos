<?php

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
