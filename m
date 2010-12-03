Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F2564C80052
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 03:09:16 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB399FgX029831;
	Fri, 3 Dec 2010 01:09:15 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 3 Dec 2010 01:09:14 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 3 Dec 2010 01:09:13 -0800
Message-ID: <4CF8B384.5080308@windriver.com>
Date: Fri, 03 Dec 2010 17:08:20 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: poky@yoctoproject.org
X-OriginalArrivalTime: 03 Dec 2010 09:09:13.0749 (UTC)
	FILETIME=[C1310C50:01CB92C9]
Cc: Harry Ciao <qingtao.cao@windriver.com>
Subject: LSB test status
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Dec 2010 09:09:17 -0000
Content-Type: multipart/alternative;
	boundary="------------060709000202020408060902"

--------------060709000202020408060902
Content-Type: text/plain; charset=GBK; format=flowed
Content-Transfer-Encoding: 7bit

Hi Saul and Mark,

We can test all items by lsb test suite now. We will push stuff modified 
to poky-contribute. We are adding auto-test codes for lsb to poky. After 
we submit auto-test codes, all of people can modify bugs from lsb test 
suite. On the next week we will open all bugs to bugzilla.

LSB Test Suite 	Version 	Result 	Added to LSB image 	Left work 	Times 
(63 days/2 mans) 	Start Date 	Finish Date 	Status 	Completed Percent 
Delay Reason
Command Check 	4.0.0-2 	Failures: 10 	Passed: 140 	Ed, fontconfig, man 
Lsb, cups, mailx, sendmail 	3 	2010-11-24 	2010-12-1 	Not started Yet 
(Delayed) 	50% 	There are still some bugs for desktop, which cause the 
delay.
Library Check 	4.0.2-1 	Failures: 40 	Passed: 5953 	
	cups,jpeg,qt3,library bugs 	6 	2010-12-28 	2011-1-5 	Not started Yet 	
	
Core Tests 	4.0.5-1 	Failures: 1780 	Passed: 4104 	pam-plugin-*, 
e2fsprog-mke2fs, eglibc-localedata-posix 	fix failures 	8 	2011-1-6 
2011-1-27 	Not started Yet 	
	
Cpp-T2C Tests 	4.0.2-1 	Failures: 265 	Passed: 1589 	
	fix failures 	6 	2011-1-10 	2011-1-25 	Not started Yet 	
	
Desktop-T2C Tests 	4.0.2-1 	Failures: 168 	Passed: 4964 	
	fix failures 	5 	2010-12-14 	2010-12-27 	Not started Yet 	
	
Libstdc++ Tests 	4.1.0-7 	Failures: 350 	Passed: 1440 	
	fix failures 	7 	2010-1-26 	2011-2-14 	Not started Yet 	
	
Perl Tests 	4.0.7-1 	Failures: 10 	Passed: 843 	perl-pod, perl-misc, 
perl-doc, perl-modules-*, etc 	fix failures 	2 	2010-12-2 	2010-12-7 	In 
Progress(On track) 	90% 	1 bug left, Need to research further or test it 
again
Python Runtime Tests 	4.0.2-1 	Failures: 21 	Passed: 86 	python-misc, 
python-unittest, python-shell, etc 	fix failures 	2 	2010-12-8 
2010-12-13 	In Progress(On track) 	80% 	3 bugs left, I think the bugs 
are caused by version of python and I find newer python has been available.
Qt4-Azov Tests 	4.0.2-1 	Failures: 4 	Passed: 10719 	libqtcore4, 
libqtgui4, etc 	fix failures 	2 	2010-12-2 	2010-12-7 	Not started Yet 	
	
Xts5 Tests 	5.1.5-19 	Failures: 496 	Passed: 0 	mkfontdir, 
mkfontscale, etc 	fix failures 	5 	2010-12-24 	2011-1-7 	Not started Yet 	
	
Python Tests 	2.4.5-2 	Passed 	
	fix failures 	2 	2010-11-17 	2010-11-17 	Done 	100% 	
OLVER Core Tests 	
	Failures:53 	Passed:7256 	libxml-parser-perl, perl-uri, libxml-perl 	
	5 	2010-11-18 	2010-12-1 	In Progress(Pending) 	10% 	The time for 
solving Desktop is longer than exception
Tcl Tests 	8.5.7-6 	Failures: 126 	Passed: 138 	change version of tcl 
test 	fix failures 	4 	2010-12-14 	2010-12-23 	Not started Yet 	
	
LSB Test Suite 	
	
	
	cups, ghostscript, foomatic 	2 	2010-12-8 	2010-12-13 	Not started Yet 	
	

	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	Developer 1 	
	
	
	

	
	
	
	
	
	
	Developer 2 	
	
	
	
Yocto M3 Stabilize Finish Date 	2011-2-11 	
	
	
	
	
	
	
	
	
	
Yocto M4 Stabilize Finish Date 	2011-3-18 	
	
	
	
	
	
	
	
	
	
Forecasted Finish Date 	2011-2-15 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	


Thanks,
Yan

<http://help.163.com/special/00753VB9/126mail_adv_guide.html?id=2840>

--------------060709000202020408060902
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=GBK">
</head>
<body text="#000000" bgcolor="#ffffff">
Hi Saul and Mark,<br>
<br>
We can test all items by lsb test suite now. We will push stuff
modified to poky-contribute. We are adding auto-test codes for lsb to
poky. After we submit auto-test codes, all of people can modify bugs
from lsb test suite. On the next week we will open all bugs to
bugzilla.&nbsp; <br>
<br>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<div>
<table style="width: 1666.5pt; border-collapse: collapse;" height="962"
 width="16665">
  <colgroup>
  <col width="242"><col width="101">
  <col width="148"><col width="156">
  <col width="262"><col width="160">
  <col width="126"><col width="183">
  <col width="158"><col width="193">
  <col width="143"><col width="350">
  </colgroup><tbody>
    <tr height="37">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 181.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 700; text-decoration: none;"
 class="et3" height="37" width="242">LSB<span style="">&nbsp;</span>Test<span
 style="">&nbsp;</span>Suite</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 75.75pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 700; text-decoration: none;"
 class="et3" height="37" width="101">Version</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 222pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 700; text-decoration: none;"
 class="et3" colspan="2" height="37" width="296">Result</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 196.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" height="37" width="262">Added<span style="">&nbsp;</span>to<span
 style="">&nbsp;</span>LSB<span style="">&nbsp;</span>image</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 120pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et5" height="37" width="160">Left<span style="">&nbsp;</span>work</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" height="37" width="126">Times<span style="">&nbsp;</span>(63<span
 style="">&nbsp;</span>days/2<span style="">&nbsp;</span>mans)</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 137.25pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" height="37" width="183">Start<span style="">&nbsp;</span>Date</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" height="37" width="158">Finish<span style="">&nbsp;</span>Date</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" height="37" width="193">Status</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-right: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 107.25pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et6" height="37" width="143">Completed<span style="">&nbsp;</span>Percent</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-right: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 262.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et6" height="37" width="350">Delay<span style="">&nbsp;</span>Reason</td>
    </tr>
    <tr height="58">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="58" width="242">Command<span style="">&nbsp;</span>Check</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="58" width="101">4.0.0-2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="58" width="148">Failures:<span style="">&nbsp;</span>10</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="58" width="156">Passed:<span style="">&nbsp;</span>140</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="58" width="262">Ed,<span style="">&nbsp;</span>fontconfig,<span
 style="">&nbsp;</span>man</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="58" width="160">Lsb,<span style="">&nbsp;</span>cups,<span
 style="">&nbsp;</span>mailx,<span style="">&nbsp;</span>sendmail</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="3" height="58" width="126">3</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40506" height="58" width="183">2010-11-24</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40513" height="58" width="158">2010-12-1</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 51, 51) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 144.75pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et15" height="58" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet<span style="">&nbsp;</span>(Delayed)<span style="">&nbsp;</span></td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 107.25pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et16" x:num="0.5" height="58" width="143">50%</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 43.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="58" width="350">There<span style="">&nbsp;</span>are<span
 style="">&nbsp;</span>still<span style="">&nbsp;</span>some<span style="">&nbsp;</span>bugs<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>desktop,<span style="">&nbsp;</span>which<span
 style="">&nbsp;</span>cause<span style="">&nbsp;</span>the<span style="">&nbsp;</span>delay.<span
 style="">&nbsp;</span></td>
    </tr>
    <tr height="67">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="67" width="242">Library<span style="">&nbsp;</span>Check</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="67" width="101">4.0.2-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="67" width="148">Failures:<span style="">&nbsp;</span>40</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="67" width="156">Passed:<span style="">&nbsp;</span>5953</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="67" width="262"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="67" width="160">cups,jpeg,qt3,library<span
 style="">&nbsp;</span>bugs</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="6" height="67" width="126">6</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40540" height="67" width="183">2010-12-28</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40548" height="67" width="158">2011-1-5</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="67" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="67" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 50.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="67" width="350"><br>
      </td>
    </tr>
    <tr height="75">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="75" width="242">Core<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="75" width="101">4.0.5-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="75" width="148">Failures:<span style="">&nbsp;</span>1780</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="75" width="156">Passed:<span style="">&nbsp;</span>4104</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="75" width="262">pam-plugin-*,<span style="">&nbsp;</span>e2fsprog-mke2fs,<span
 style="">&nbsp;</span>eglibc-localedata-posix</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="75" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="8" height="75" width="126">8</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40549" height="75" width="183">2011-1-6</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40570" height="75" width="158">2011-1-27</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="75" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="75" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 56.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="75" width="350"><br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Cpp-T2C<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">4.0.2-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="38" width="148">Failures:<span style="">&nbsp;</span>265</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="38" width="156">Passed:<span style="">&nbsp;</span>1589</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="262"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="6" height="38" width="126">6</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40553" height="38" width="183">2011-1-10</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40568" height="38" width="158">2011-1-25</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Desktop-T2C<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">4.0.2-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="38" width="148">Failures:<span style="">&nbsp;</span>168</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="38" width="156">Passed:<span style="">&nbsp;</span>4964</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="262"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="5" height="38" width="126">5</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40526" height="38" width="183">2010-12-14</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40539" height="38" width="158">2010-12-27</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Libstdc++<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">4.1.0-7</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="38" width="148">Failures:<span style="">&nbsp;</span>350</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="38" width="156">Passed:<span style="">&nbsp;</span>1440</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="262"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="7" height="38" width="126">7</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40204" height="38" width="183">2010-1-26</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40588" height="38" width="158">2011-2-14</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="56">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="56" width="242">Perl<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="56" width="101">4.0.7-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="56" width="148">Failures:<span style="">&nbsp;</span>10</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="56" width="156">Passed:<span style="">&nbsp;</span>843</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="56" width="262">perl-pod,<span style="">&nbsp;</span>perl-misc,<span
 style="">&nbsp;</span>perl-doc,<span style="">&nbsp;</span>perl-modules-*,<span
 style="">&nbsp;</span>etc</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="56" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="2" height="56" width="126">2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40514" height="56" width="183">2010-12-2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40519" height="56" width="158">2010-12-7</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(0, 71, 255) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 144.75pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et22" height="56" width="193">In<span style="">&nbsp;</span>Progress(On<span
 style="">&nbsp;</span>track)</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 107.25pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et16" x:num="0.9" height="56" width="143">90%</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="56" width="350">1<span style="">&nbsp;</span>bug<span
 style="">&nbsp;</span>left,<span style="">&nbsp;</span>Need<span style="">&nbsp;</span>to<span
 style="">&nbsp;</span>research<span style="">&nbsp;</span>further<span style="">&nbsp;</span>or<span
 style="">&nbsp;</span>test<span style="">&nbsp;</span>it<span style="">&nbsp;</span>again</td>
    </tr>
    <tr height="56">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="56" width="242">Python<span style="">&nbsp;</span>Runtime<span
 style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="56" width="101">4.0.2-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="56" width="148">Failures:<span style="">&nbsp;</span>21</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="56" width="156">Passed:<span style="">&nbsp;</span>86</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="56" width="262">python-misc,<span style="">&nbsp;</span>python-unittest,<span
 style="">&nbsp;</span>python-shell,<span style="">&nbsp;</span>etc</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="56" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="2" height="56" width="126">2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40520" height="56" width="183">2010-12-8</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40525" height="56" width="158">2010-12-13</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(0, 71, 255) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 144.75pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et22" height="56" width="193">In<span style="">&nbsp;</span>Progress(On<span
 style="">&nbsp;</span>track)</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 107.25pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et16" x:num="0.8" height="56" width="143">80%</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 42pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="56" width="350">3<span style="">&nbsp;</span>bugs<span
 style="">&nbsp;</span>left,<span style="">&nbsp;</span>I<span style="">&nbsp;</span>think<span
 style="">&nbsp;</span>the<span style="">&nbsp;</span>bugs<span style="">&nbsp;</span>are<span
 style="">&nbsp;</span>caused<span style="">&nbsp;</span>by<span style="">&nbsp;</span>version<span
 style="">&nbsp;</span>of<span style="">&nbsp;</span>python<span style="">&nbsp;</span>and<span
 style="">&nbsp;</span>I<span style="">&nbsp;</span>find<span style="">&nbsp;</span>newer<span
 style="">&nbsp;</span>python<span style="">&nbsp;</span>has<span style="">&nbsp;</span>been<span
 style="">&nbsp;</span>available.</td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Qt4-Azov<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">4.0.2-1</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="38" width="148">Failures:<span style="">&nbsp;</span>4</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="38" width="156">Passed:<span style="">&nbsp;</span>10719</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="38" width="262">libqtcore4,<span style="">&nbsp;</span>libqtgui4,<span
 style="">&nbsp;</span>etc</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="2" height="38" width="126">2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40514" height="38" width="183">2010-12-2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40519" height="38" width="158">2010-12-7</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Xts5<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">5.1.5-19</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="38" width="148">Failures:<span style="">&nbsp;</span>496</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="38" width="156">Passed:<span style="">&nbsp;</span>0</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="38" width="262">mkfontdir,<span style="">&nbsp;</span>mkfontscale,<span
 style="">&nbsp;</span>etc</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="5" height="38" width="126">5</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40536" height="38" width="183">2010-12-24</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40550" height="38" width="158">2011-1-7</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Python<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">2.4.5-2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 222pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et23" colspan="2" height="38" width="296">Passed</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="262"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="2" height="38" width="126">2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40499" height="38" width="183">2010-11-17</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40499" height="38" width="158">2010-11-17</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); background: rgb(0, 128, 0) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 144.75pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et24" height="38" width="193">Done</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et16" x:num="1" height="38" width="143">100%</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="37">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="37" width="242">OLVER<span style="">&nbsp;</span>Core<span
 style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et25" height="37" width="101"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="37" width="148">Failures:53</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et10" height="37" width="156">Passed:7256</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="37" width="262">libxml-parser-perl,<span style="">&nbsp;</span>perl-uri,<span
 style="">&nbsp;</span>libxml-perl</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="37" width="160"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="5" height="37" width="126">5</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40500" height="37" width="183">2010-11-18</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40513" height="37" width="158">2010-12-1</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 51, 51) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 144.75pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et15" height="37" width="193">In<span style="">&nbsp;</span>Progress(Pending)</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 107.25pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et26" x:num="0.1" height="37" width="143">10%</td>
      <td valign="top">The time for solving Desktop is longer than
exception<br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">Tcl<span style="">&nbsp;</span>Tests</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="101">8.5.7-6</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 96, 96) none repeat scroll 0% 0%; font-style: normal; width: 111pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="38" width="148">Failures:<span style="">&nbsp;</span>126</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(51, 153, 102) none repeat scroll 0% 0%; font-style: normal; width: 117pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et27" height="38" width="156">Passed:<span style="">&nbsp;</span>138</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="38" width="262">change<span style="">&nbsp;</span>version<span
 style="">&nbsp;</span>of<span style="">&nbsp;&nbsp;</span>tcl<span style="">&nbsp;</span>test<span
 style="">&nbsp;</span></td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et19" height="38" width="160">fix<span style="">&nbsp;</span>failures</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="4" height="38" width="126">4</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" x:num="40526" height="38" width="183">2010-12-14</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40535" height="38" width="158">2010-12-23</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="38">
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 181.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et8" height="38" width="242">LSB<span style="">&nbsp;</span>Test<span
 style="">&nbsp;</span>Suite</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 75.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et25" height="38" width="101"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 222pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et25" colspan="2" height="38" width="296"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 196.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="262"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 120pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et11" height="38" width="160">cups,<span style="">&nbsp;</span>ghostscript,<span
 style="">&nbsp;</span>foomatic</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 94.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" x:num="2" height="38" width="126">2</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" x:num="40520" height="38" width="183">2010-12-8</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 118.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et14" x:num="40525" height="38" width="158">2010-12-13</td>
      <td
 style="border-top: 0.5pt solid rgb(26, 26, 26); border-left: 0.5pt solid rgb(26, 26, 26); border-bottom: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 144.75pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et20" height="38" width="193">Not<span style="">&nbsp;</span>started<span
 style="">&nbsp;</span>Yet</td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 107.25pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="143"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); font-style: normal; width: 262.5pt; white-space: normal; height: 28.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et17" height="38" width="350"><br>
      </td>
    </tr>
    <tr height="19">
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
    </tr>
    <tr height="19">
      <td
 style="font-style: normal; width: 181.5pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et2" height="19" width="242"><br>
      </td>
      <td
 style="font-style: normal; width: 75.75pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et28" height="19" width="101"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 153, 204) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 14.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et13" height="19" width="183">Developer<span style="">&nbsp;</span>1</td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
    </tr>
    <tr height="19">
      <td
 style="font-style: normal; width: 181.5pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et2" height="19" width="242"><br>
      </td>
      <td
 style="font-style: normal; width: 75.75pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et28" height="19" width="101"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); background: rgb(255, 204, 153) none repeat scroll 0% 0%; text-align: center; font-style: normal; width: 137.25pt; white-space: normal; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 14.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et21" height="19" width="183">Developer<span style="">&nbsp;</span>2</td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
      <td height="19"><br>
      </td>
    </tr>
    <tr height="49">
      <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 181.5pt; white-space: normal; height: 36.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et29" height="49" width="242">Yocto<span style="">&nbsp;</span>M3<span
 style="">&nbsp;</span>Stabilize<span style="">&nbsp;</span>Finish<span style="">&nbsp;</span>Date</td>
      <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 75.75pt; white-space: normal; height: 36.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et30" x:num="40585" height="49" width="101">2011-2-11</td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
      <td height="49"><br>
      </td>
    </tr>
    <tr height="61">
      <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 181.5pt; white-space: normal; height: 45.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et29" height="61" width="242">Yocto<span style="">&nbsp;</span>M4<span
 style="">&nbsp;</span>Stabilize<span style="">&nbsp;</span>Finish<span style="">&nbsp;</span>Date</td>
      <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 75.75pt; white-space: normal; height: 45.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et30" x:num="40620" height="61" width="101">2011-3-18</td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
      <td height="61"><br>
      </td>
    </tr>
    <tr height="37">
      <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 181.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et31" height="37" width="242">Forecasted<span style="">&nbsp;</span>Finish<span
 style="">&nbsp;</span>Date</td>
      <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 75.75pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et30" x:num="40589" height="37" width="101">2011-2-15</td>
      <td height="37"><br>
      </td>
      <td
 style="text-align: center; font-style: normal; width: 117pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et32" height="37" width="156"><br>
      </td>
      <td
 style="border: 0.5pt solid rgb(26, 26, 26); text-align: center; font-style: normal; width: 196.5pt; white-space: normal; height: 27.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et33" height="37" width="262"><br>
      </td>
      <td height="37"><br>
      </td>
      <td height="37"><br>
      </td>
      <td height="37"><br>
      </td>
      <td height="37"><br>
      </td>
      <td height="37"><br>
      </td>
      <td height="37"><br>
      </td>
      <td height="37"><br>
      </td>
    </tr>
    <tr height="21">
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
      <td height="21"><br>
      </td>
    </tr>
  </tbody>
</table>
</div>
<br>
Thanks,<br>
Yan<br>
<br>
<span title="neteasefooter"><span id="netease_mail_footer"><a
 moz-do-not-send="true"
 href="http://help.163.com/special/00753VB9/126mail_adv_guide.html?id=2840"
 target="_blank"></a></span></span>
</body>
</html>

--------------060709000202020408060902--
