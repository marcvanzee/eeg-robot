/*
 *  Webpage
 */

/*
 *  Served page by Arduino
 *
 *  This function is called when some one requests a page.
 *  By the name of this requested page the serb knows where to move to
 *  At the same time it give feedback to what happend
 *
 */

boolean servePage(char* URL) {

  //  Compare the URL with what i want it to be
  //  If strcmp returns zero it means true/yes/ok/yup etc.
  if (strcmp(URL, "/movement=1") == 0) {

    //  Use WiServer's print and println functions to write out the page content
    //  This is used for debuging and feedback for the web-app
    WiServer.print("1");

    //  RobotControl
    robotControl(1);

    // URL was recognized
    return true; 

  }
  // The same story for different commands 
  else if (strcmp(URL, "/movement=2") == 0) {  
    WiServer.print("2");
    robotControl(2);
    return true; 
  } 
  else if (strcmp(URL, "/movement=3") == 0) {
    WiServer.print("3");
    robotControl(3);
    return true;
  } 
  else if (strcmp(URL, "/movement=4") == 0) {
    WiServer.print("4");
    robotControl(4);
    return true; 
  } 
  else {
    WiServer.print("0");
    robotControl(0);
    return true; 
  }

  //  URL was not found
  return false;

}

