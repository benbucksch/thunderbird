var {Services} = ChromeUtils.import("resource://gre/modules/Services.jsm");
var {MailServices} = ChromeUtils.import("resource:///modules/MailServices.jsm");
var {mailTestUtils} = ChromeUtils.import("resource://testing-common/mailnews/mailTestUtils.js");
var {localAccountUtils} = ChromeUtils.import("resource://testing-common/mailnews/localAccountUtils.js");

var CC = Components.Constructor;

// Ensure the profile directory is set up
do_get_profile();


registerCleanupFunction(function() {
  load("../../../../../mailnews/resources/mailShutdown.js");
});
