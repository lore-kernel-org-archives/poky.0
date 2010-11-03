Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD0FB4C80287
	for <poky@pokylinux.org>; Wed,  3 Nov 2010 04:54:14 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA39sDvk008370
	for <poky@pokylinux.org>; Wed, 3 Nov 2010 02:54:14 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 02:54:12 -0700
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 02:54:11 -0700
Message-ID: <4CD1307D.7010506@windriver.com>
Date: Wed, 03 Nov 2010 17:50:53 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: poky@pokylinux.org
X-OriginalArrivalTime: 03 Nov 2010 09:54:11.0765 (UTC)
	FILETIME=[10F11E50:01CB7B3D]
X-Mailman-Approved-At: Wed, 03 Nov 2010 10:42:51 -0500
Subject: [LSB]About lsb test result and plan
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 09:54:15 -0000
Content-Type: multipart/alternative;
	boundary="------------050406040105020708070605"

--------------050406040105020708070605
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone,

This is table for lsb test result and we give a preliminary plan for lsb 
test under table.

> Target 	Test Classification 	Test Items 	Original lsb-image
> (The image without adding anything) 	Add lsb package
> Add perl-module-*
> Add eglibc-utils,localedef 	Remark
> Run Test 	Result 	Run Test 	Result
> X86 	Command Tests 	Command Check
> 4.0.0-2 	F 	No 	T 	Test Cases Total: 150
> Test Passed: 139
> Failures: 11
> Test Waived: 8 	The reason for Failures is that some commands are 
> absent in lsb-image,for example, sendmail. We can add these packages 
> including absent commands to lsb-image
> Static Interface Tests 	Library Check
> 4.0.2-1 	F 	No 	T 	Test Cases Total: 2947
> Test Passed: 1557
> Test Failed: 1390 	The reasons for Failures are below:
> 1 Some libraries are absent in lsb-image
> 2 Some functions of libraries are absent
> Runtime Interface Tests 	Core Tests 4.0.5-1 	F 	No 	F 	No 	Add 
> pam-plugin-*, e2fsprogs-mke2fs, eglibc-localedata-posix
> Run test 	Result
> T 	Test Cases Total 10593
> Tests Passed 4100
> Failures 1782
> Warnings 4
> Tests Waived 47
> FIPs 19
> Cpp-T2C Tests
> 4.0.2-1 	F 	No 	T 	Test Cases Total: 1854
> Test Passed: 1589
> Failures: 265
> Test Waived: 144 	The reason for Failures is that some file could be 
> absent in lsb test suite or perhaps some other resons. We need to 
> ensure this probleme later.
> Desktop Test
> 4.0.4-2 	F 	No 	F 	No 	Don't install lsb test suite for it
> Desktop-T2C Test
> 4.0.2-1 	F 	No 	T 	Test Cases Total: 5132
> Test Passed: 4964
> Failures: 168
> Test Waived: 49 	We need ensure the reason later
> OLVER Core Tests
> 4.0.1-1 	F 	No 	T/M
> F/G 	No 	Absent some resources needed by lsb test suite
> Perl Tests 4.0.7-1 	F 	No 	T 	Test Cases Total 853
> Tests Passed 843
> Failures 10 	Add perl-pod, perl-misc, perl-doc
> Modify perl package(add a patch)
> Run test 	Result
> T 	Tests Total 853
> Tests Passed 853
> Printing Tests
> 4.0.4-3 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Python Running Tests
> 4.0.2-1 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Qt3-Azov Tests
> 4.0.2-1 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Qt4-Azov Tests
> 4.0.2-1 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Xts5 Tests
> 5.1.5-19 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Automated Application Battery Tests 	Apache Tests
> 2.2.8-2 	- 	- 	T 	Passed 	
> Expect Tests
> 5.43.0-7 	- 	- 	T 	Passed 	
> Groff Tests
> 1.19.2-4 	- 	- 	T 	Passed 	
> Python Tests
> 2.4.5-2 	F 	No 	T 	Test Cases Total 291
> Tests Passed 250
> Failures 4
> Warnings 1 	
> Raptor Tests
> 1.4.16-2 	- 	- 	T 	Passed 	
> Rsync Tests
> 3.0.0-2 	- 	- 	T 	Passed 	
> Samba Tests
> 3.0.28a-3 	- 	- 	T 	- 	
> Tcl Tests
> 8.5.1-2 	- 	- 	T 	Passed 	
> Xpdf Tests
> 1.01-7 	- 	- 	T 	Passed 	
> X86-64 	Command Tests 	Command Check
> 4.0.0-2 	F 	No 	T 	Test Cases Total: 150
> Test Passed: 139
> Failures: 11
> Test Waived: 8 	AS X86
> Static Interface Tests 	Library Check
> 4.0.2-1 	F 	No 	T 	Test Cases Total: 2947
> Test Passed: 1557
> Test Failed: 1390 	AS X86
> Runtime Interface Tests 	Core Tests 4.0.5-1 	F 	No 	F 	No 	We will add 
> some packages as x86 to lsb-image and test it.
> Cpp-T2C Tests
> 4.0.2-1 	F 	No 	T 	Test Cases Total: 1854
> Test Passed: 1589
> Failures: 265
> Test Waived: 144 	AS X86
> Desktop Test
> 4.0.4-2 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Desktop-T2C Test
> 4.0.2-1 	F 	No 	T 	Test Cases Total: 5132
> Test Passed: 4963
> Failures: 169
> Test Waived: 49 	AS X86
> OLVER Core Tests
> 4.0.1-1 	F 	No 	T/M
> F/G 	No 	Absent some resources needed by lsb test suite
> Perl Tests 4.0.7-1 	F 	No 	T 	Test Cases Total 853
> Tests Passed 18
> Failures 17 	We will add some packages as x86 to lsb-image and test it.
> Printing Tests
> 4.0.4-3 	F 	No 	F 	Test Cases Excepted:97
> Tests Passed 3
> Failures 21
> Test suite error:1 	Absent cups libraries
> Python Running Tests
> 4.0.2-1 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Qt3-Azov Tests
> 4.0.2-1 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Qt4-Azov Tests
> 4.0.2-1 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Xts5 Tests
> 5.1.5-19 	F 	No 	F 	No 	Absent some resources needed by lsb test suite
> Automated Application Battery Tests 	Apache Tests
> 2.2.8-2 	- 	- 	- 	- 	Don't install lsb test suite for it
> Expect Tests
> 5.43.0-7 	- 	- 	- 	- 	Don't install lsb test suite for it
> Groff Tests
> 1.19.2-4 	- 	- 	- 	- 	Don't install lsb test suite for it
> Python Tests
> 2.4.5-2 	F 	No 	T 	No 	Absent some resources needed by lsb test suite
> Raptor Tests
> 1.4.16-2 	- 	- 	- 	- 	Don't install lsb test suite for it
> Rsync Tests
> 3.0.0-2 	- 	- 	- 	- 	Don't install lsb test suite for it
> Samba Tests
> 3.0.28a-3 	- 	- 	- 	- 	Don't install lsb test suite for it
> Tcl Tests
> 8.5.1-2 	- 	- 	- 	- 	Don't install lsb test suite for it
> Xpdf Tests
> 1.01-7 	- 	- 	- 	- 	Don't install lsb test suite for it
>
> 	Note:
> Run test:
> T: LSB test suite can run completely.
> F: There are some issues that block LSB test suite itself running 
> completely.
> T/M: LSB can be tested with manual method.
> T/G: LSB can be tested with graphic method.
> Result:
> No: There is no result because LSB test suite cannot run.
>
>

It is a  preliminary analysis for lsb test. We will give more 
information later(include ppc).
A plan about how to fix bugs:
step 1: We will solve bugs which some of lsb test suite can't still run 
on lsb-image (The work is now in progress)
step 2: Make two auto script for setting up lsb test environment. One is 
for setting on pc , we want to add this script to poky/scripts; the 
other is for setting for lsb-image, we want to add this script to 
lsb-image in the mode of bb file.  (sync up with step 1)
step 3: Write a user manual about how to test lsb-imgae by lsb test 
suite and we want to this user manual to lsb-image (after step 2)
step 4: List bugs tested by lsb test suite(sync up with step 1)
step 5: Solve bugs tested by lsb test suite(everyone can attend to fix bugs)
Method for fixing bugs:
- We will fix bugs for lsb test suite itself on platform x86 firstly and 
then apply the result to  other platform when step 1 is over.
- We will fix bugs tested by lsb test suite on platform x86 and then 
apply the result to other platform.

We will open a bugzilla for failed items tested by lsb test suite and 
make a milestone for fixing bugs with detailed time plan on the next week.
Please give your suggestion.

Thanks,
Yan


--------------050406040105020708070605
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta http-equiv="content-type"
 content="text/html; charset=ISO-8859-1">
</head>
<body text="#000000" bgcolor="#ffffff">
Hi everyone,<br>
<br>
This is table for lsb test result and we give a preliminary plan for
lsb test under table.<br>
<br>
<blockquote type="cite">
  <table style="width: 1110pt; border-collapse: collapse;" height="2353"
 width="1480">
    <tbody>
      <tr height="103">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 81.75pt; height: 95.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" rowspan="2" height="127" width="109">Target</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 95.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" rowspan="2" height="127" width="259">Test<span style="">&nbsp;</span>Classification</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 120.75pt; height: 95.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" rowspan="2" height="127" width="161">Test<span style="">&nbsp;</span>Items</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 231pt; white-space: normal; height: 77.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et5" colspan="2" height="103" width="308">Original<span style="">&nbsp;</span>lsb-image<br>
        <span class="font1">(The<span style="">&nbsp;</span>image<span
 style="">&nbsp;</span>without<span style="">&nbsp;</span>adding<span style="">&nbsp;</span>anything)</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 228pt; white-space: normal; height: 77.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et5" colspan="2" height="103" width="304">Add<span style="">&nbsp;</span>lsb<span
 style="">&nbsp;</span>package<span style="">&nbsp;</span><br>
        <span class="font1"><span style="">&nbsp;&nbsp;&nbsp;</span>Add<span style="">&nbsp;</span>perl-module-*<br>
        </span><span class="font1"><span style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Add<span
 style="">&nbsp;</span>eglibc-utils,localedef</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 261pt; height: 95.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et4" rowspan="2" colspan="2" height="127" width="348">Remark</td>
      </tr>
      <tr height="24">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 115.5pt; white-space: normal; height: 18pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et5" height="24" width="154">Run<span style="">&nbsp;</span>Test</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 121.5pt; white-space: normal; height: 18pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et5" height="24" width="162">Result</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 114pt; height: 18pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: bottom; font-weight: 700; text-decoration: none;"
 class="et7" height="24" width="152">Run<span style="">&nbsp;</span>Test<span
 style="">&nbsp;</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 123pt; height: 18pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: bottom; font-weight: 700; text-decoration: none;"
 class="et7" height="24" width="164">Result</td>
      </tr>
      <tr height="102">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 81.75pt; height: 832.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et8" rowspan="26" height="1110" width="109">X86</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="102" width="259">Command<span style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="102" width="161">Command<span style="">&nbsp;</span>Check<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.0-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="102" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="102" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="102" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="102" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>150<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>139<br>
        </span><span class="font2">Failures:<span style="">&nbsp;</span>11<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Waived:<span
 style="">&nbsp;</span>8</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 76.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="102" width="348">The<span style="">&nbsp;</span>reason<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>Failures<span style="">&nbsp;</span>is<span
 style="">&nbsp;</span>that<span style="">&nbsp;</span>some<span style="">&nbsp;</span>commands<span
 style="">&nbsp;</span>are<span style="">&nbsp;</span>absent<span style="">&nbsp;</span>in<span
 style="">&nbsp;</span>lsb-image,for<span style="">&nbsp;</span>example,<span
 style="">&nbsp;</span>sendmail.<span style="">&nbsp;</span>We<span style="">&nbsp;</span>can<span
 style="">&nbsp;</span>add<span style="">&nbsp;</span>these<span style="">&nbsp;</span>packages<span
 style="">&nbsp;</span>including<span style="">&nbsp;</span>absent<span style="">&nbsp;</span>commands<span
 style="">&nbsp;</span>to<span style="">&nbsp;</span>lsb-image</td>
      </tr>
      <tr height="62">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="62" width="259">Static<span style="">&nbsp;</span>Interface<span
 style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="161">Library<span style="">&nbsp;</span>Check<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>2947<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>1557<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Failed:<span
 style="">&nbsp;</span>1390</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="62" width="348">The<span style="">&nbsp;</span>reasons<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>Failures<span style="">&nbsp;</span>are<span
 style="">&nbsp;</span>below:<br>
        <span class="font3">1<span style="">&nbsp;</span>Some<span style="">&nbsp;</span>libraries<span
 style="">&nbsp;</span>are<span style="">&nbsp;</span>absent<span style="">&nbsp;</span>in<span
 style="">&nbsp;</span>lsb-image<br>
        </span><span class="font3">2<span style="">&nbsp;</span>Some<span
 style="">&nbsp;</span>functions<span style="">&nbsp;</span>of<span style="">&nbsp;</span>libraries<span
 style="">&nbsp;</span>are<span style="">&nbsp;</span>absent</span></td>
      </tr>
      <tr height="36">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 465pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" rowspan="15" height="620" width="259">Runtime<span
 style="">&nbsp;</span>Interface<span style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 123pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="164" width="161">Core<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span>4.0.5-1</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 123pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="164" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 123pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="164" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 123pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="164" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 123pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="164" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 27pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" colspan="2" height="36" width="348">Add<span style="">&nbsp;</span>pam-plugin-*,<span
 style="">&nbsp;</span>e2fsprogs-mke2fs,<span style="">&nbsp;</span>eglibc-localedata-posix</td>
      </tr>
      <tr height="19">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 130.5pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="19" width="174">Run<span style="">&nbsp;</span>test</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 108.75pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="19" width="145">Result</td>
      </tr>
      <tr height="109">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 130.5pt; white-space: normal; height: 81.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="109" width="174">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 108.75pt; white-space: normal; height: 81.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="109" width="145">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total<span style="">&nbsp;&nbsp;</span>10593<br>
        <span class="font2">Tests<span style="">&nbsp;</span>Passed<span
 style="">&nbsp;&nbsp;</span>4100<br>
        </span><span class="font2">Failures<span style="">&nbsp;&nbsp;</span>1782<br>
        </span><span class="font2">Warnings<span style="">&nbsp;&nbsp;</span>4<br>
        </span><span class="font2">Tests<span style="">&nbsp;</span>Waived<span
 style="">&nbsp;&nbsp;</span>47<br>
        </span><span class="font2">FIPs<span style="">&nbsp;&nbsp;</span>19</span></td>
      </tr>
      <tr height="78">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="161">Cpp-T2C<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>1854<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>1589<br>
        </span><span class="font2">Failures:<span style="">&nbsp;</span>265<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Waived:<span
 style="">&nbsp;</span>144</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="78" width="348">The<span style="">&nbsp;</span>reason<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>Failures<span style="">&nbsp;</span>is<span
 style="">&nbsp;</span>that<span style="">&nbsp;</span>some<span style="">&nbsp;</span>file<span
 style="">&nbsp;</span>could<span style="">&nbsp;</span>be<span style="">&nbsp;</span>absent<span
 style="">&nbsp;</span>in<span style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span
 style="">&nbsp;</span>suite<span style="">&nbsp;&nbsp;</span>or<span style="">&nbsp;</span>perhaps<span
 style="">&nbsp;</span>some<span style="">&nbsp;</span>other<span style="">&nbsp;</span>resons.<span
 style="">&nbsp;</span>We<span style="">&nbsp;</span>need<span style="">&nbsp;</span>to<span
 style="">&nbsp;</span>ensure<span style="">&nbsp;</span>this<span style="">&nbsp;</span>probleme<span
 style="">&nbsp;</span>later.</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Desktop<span style="">&nbsp;</span>Test<br>
        <span class="font2">4.0.4-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="78">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="161">Desktop-T2C<span style="">&nbsp;</span>Test<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>5132<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>4964<br>
        </span><span class="font2">Failures:<span style="">&nbsp;</span>168<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Waived:<span
 style="">&nbsp;</span>49</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="78" width="348">We<span style="">&nbsp;</span>need<span
 style="">&nbsp;</span>ensure<span style="">&nbsp;</span>the<span style="">&nbsp;</span>reason<span
 style="">&nbsp;</span>later</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">OLVER<span style="">&nbsp;</span>Core<span
 style="">&nbsp;</span>Tests<span style="">&nbsp;</span><br>
        <span class="font2">4.0.1-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T/M<br>
        <span class="font2">F/G</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="33">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 62.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="83" width="161">Perl<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span>4.0.7-1</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 62.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="83" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 62.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="83" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 62.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="83" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 62.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="83" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total<span style="">&nbsp;&nbsp;</span>853<br>
        <span class="font2">Tests<span style="">&nbsp;</span>Passed<span
 style="">&nbsp;&nbsp;</span>843<br>
        </span><span class="font2">Failures<span style="">&nbsp;&nbsp;</span>10</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 24.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" colspan="2" height="33" width="348">Add<span style="">&nbsp;</span>perl-pod,<span
 style="">&nbsp;</span>perl-misc,<span style="">&nbsp;</span>perl-doc<br>
        <span class="font2">Modify<span style="">&nbsp;</span>perl<span
 style="">&nbsp;</span>package(add<span style="">&nbsp;</span>a<span style="">&nbsp;</span>patch)</span></td>
      </tr>
      <tr height="19">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 130.5pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="19" width="174">Run<span style="">&nbsp;</span>test</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 108.75pt; white-space: normal; height: 14.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="19" width="145">Result</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 130.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="174">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 108.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="145">Tests<span style="">&nbsp;</span>Total<span
 style="">&nbsp;&nbsp;</span>853<br>
        <span class="font2">Tests<span style="">&nbsp;</span>Passed<span
 style="">&nbsp;&nbsp;</span>853</span></td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Printing<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.4-3</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Python<span style="">&nbsp;</span>Running<span
 style="">&nbsp;</span>Tests<span style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Qt3-Azov<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Qt4-Azov<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Xts5<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">5.1.5-19</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border-top: 0.5pt solid rgb(0, 0, 0); border-left: 0.5pt solid rgb(0, 0, 0); border-right: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 244.5pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" rowspan="9" height="326" width="259">Automated<span
 style="">&nbsp;</span>Application<span style="">&nbsp;</span>Battery<span
 style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Apache<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">2.2.8-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Expect<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">5.43.0-7</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Groff<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">1.19.2-4</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="78">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="161">Python<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">2.4.5-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total<span style="">&nbsp;&nbsp;</span>291<br>
        <span class="font2">Tests<span style="">&nbsp;</span>Passed<span
 style="">&nbsp;&nbsp;</span>250<br>
        </span><span class="font2">Failures<span style="">&nbsp;&nbsp;</span>4<br>
        </span><span class="font2">Warnings<span style="">&nbsp;&nbsp;</span>1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 261pt; height: 58.5pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: bottom; font-weight: 700; text-decoration: none;"
 class="et15" colspan="2" height="78" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Raptor<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">1.4.16-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Rsync<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">3.0.0-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Samba<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">3.0.28a-3</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Tcl<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">8.5.1-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Xpdf<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">1.01-7</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">Passed</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348"><br>
        </td>
      </tr>
      <tr height="78">
        <td
 style="border-top: 0.5pt solid rgb(0, 0, 0); border-left: 0.5pt solid rgb(0, 0, 0); border-right: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 81.75pt; height: 714.75pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et17" rowspan="26" height="953" width="109">X86-64</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="78" width="259">Command<span style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="78" width="161">Command<span style="">&nbsp;</span>Check<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.0-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="78" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>150<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>139<br>
        </span><span class="font2">Failures:<span style="">&nbsp;</span>11<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Waived:<span
 style="">&nbsp;</span>8</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="78" width="348">AS<span style="">&nbsp;</span>X86</td>
      </tr>
      <tr height="62">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et9" height="62" width="259">Static<span style="">&nbsp;</span>Interface<span
 style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="161">Library<span style="">&nbsp;</span>Check<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="62" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>2947<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>1557<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Failed:<span
 style="">&nbsp;</span>1390</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 46.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="62" width="348">AS<span style="">&nbsp;</span>X86</td>
      </tr>
      <tr height="19">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 400.5pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" rowspan="15" height="534" width="259">Runtime<span
 style="">&nbsp;</span>Interface<span style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="161">Core<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span>4.0.5-1</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et19" rowspan="3" colspan="2" height="57" width="348">We<span
 style="">&nbsp;</span>will<span style="">&nbsp;</span>add<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>packages<span style="">&nbsp;</span>as<span style="">&nbsp;</span>x86<span
 style="">&nbsp;</span>to<span style="">&nbsp;</span>lsb-image<span style="">&nbsp;</span>and<span
 style="">&nbsp;</span>test<span style="">&nbsp;</span>it.</td>
      </tr>
      <tr height="19">
      </tr>
      <tr height="19">
      </tr>
      <tr height="78">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="161">Cpp-T2C<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>1854<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>1589<br>
        </span><span class="font2">Failures:<span style="">&nbsp;</span>265<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Waived:<span
 style="">&nbsp;</span>144</span></td>
        <td
 style="border-top: 0.5pt solid rgb(0, 0, 0); border-left: 0.5pt solid rgb(0, 0, 0); border-right: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et19" colspan="2" height="78" width="348">AS<span style="">&nbsp;</span>X86</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Desktop<span style="">&nbsp;</span>Test<br>
        <span class="font2">4.0.4-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="78">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="161">Desktop-T2C<span style="">&nbsp;</span>Test<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total:<span style="">&nbsp;</span>5132<br>
        <span class="font2">Test<span style="">&nbsp;</span>Passed:<span
 style="">&nbsp;</span>4963<br>
        </span><span class="font2">Failures:<span style="">&nbsp;</span>169<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>Waived:<span
 style="">&nbsp;</span>49</span></td>
        <td
 style="border-top: 0.5pt solid rgb(0, 0, 0); border-left: 0.5pt solid rgb(0, 0, 0); border-right: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et19" colspan="2" height="78" width="348">AS<span style="">&nbsp;</span>X86</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">OLVER<span style="">&nbsp;</span>Core<span
 style="">&nbsp;</span>Tests<span style="">&nbsp;</span><br>
        <span class="font2">4.0.1-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T/M<br>
        <span class="font2">F/G</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="19">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="161">Perl<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span>4.0.7-1</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" rowspan="3" height="57" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Total<span style="">&nbsp;&nbsp;</span>853<br>
        <span class="font2">Tests<span style="">&nbsp;</span>Passed<span
 style="">&nbsp;&nbsp;</span>18<br>
        </span><span class="font2">Failures<span style="">&nbsp;&nbsp;</span>17</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 42.75pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et19" rowspan="3" colspan="2" height="57" width="348">We<span
 style="">&nbsp;</span>will<span style="">&nbsp;</span>add<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>packages<span style="">&nbsp;</span>as<span style="">&nbsp;</span>x86<span
 style="">&nbsp;</span>to<span style="">&nbsp;</span>lsb-image<span style="">&nbsp;</span>and<span
 style="">&nbsp;</span>test<span style="">&nbsp;</span>it.</td>
      </tr>
      <tr height="19">
      </tr>
      <tr height="19">
      </tr>
      <tr height="78">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="161">Printing<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.4-3</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="78" width="164">Test<span style="">&nbsp;</span>Cases<span
 style="">&nbsp;</span>Excepted:97<br>
        <span class="font2">Tests<span style="">&nbsp;</span>Passed<span
 style="">&nbsp;&nbsp;</span>3<br>
        </span><span class="font2">Failures<span style="">&nbsp;&nbsp;</span>21<br>
        </span><span class="font2">Test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>error:1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 58.5pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="78" width="348">Absent<span style="">&nbsp;</span>cups<span
 style="">&nbsp;</span>libraries<span style="">&nbsp;</span></td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Python<span style="">&nbsp;</span>Running<span
 style="">&nbsp;</span>Tests<span style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Qt3-Azov<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Qt4-Azov<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">4.0.2-1</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Xts5<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">5.1.5-19</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border-top: 0.5pt solid rgb(0, 0, 0); border-left: 0.5pt solid rgb(0, 0, 0); border-right: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 194.25pt; height: 209.25pt; color: rgb(0, 0, 0); font-size: 10.5pt; vertical-align: middle; font-weight: 400; text-decoration: none;"
 class="et12" rowspan="9" height="279" width="259">Automated<span
 style="">&nbsp;</span>Application<span style="">&nbsp;</span>Battery<span
 style="">&nbsp;</span>Tests</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Apache<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">2.2.8-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Expect<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">5.43.0-7</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Groff<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">1.19.2-4</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Python<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">2.4.5-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">F</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">T</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">No</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Absent<span style="">&nbsp;</span>some<span
 style="">&nbsp;</span>resources<span style="">&nbsp;</span>needed<span style="">&nbsp;</span>by<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Raptor<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">1.4.16-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Rsync<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">3.0.0-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Samba<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">3.0.28a-3</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Tcl<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">8.5.1-2</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="31">
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 120.75pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="161">Xpdf<span style="">&nbsp;</span>Tests<span
 style="">&nbsp;</span><br>
        <span class="font2">1.01-7</span></td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 115.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="154">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 121.5pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="162">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 114pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="152">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 123pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et11" height="31" width="164">-</td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 261pt; white-space: normal; height: 23.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 400; text-decoration: none;"
 class="et10" colspan="2" height="31" width="348">Don't<span style="">&nbsp;</span>install<span
 style="">&nbsp;</span>lsb<span style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span
 style="">&nbsp;</span>for<span style="">&nbsp;</span>it</td>
      </tr>
      <tr height="163">
        <td
 style="border-left: 0.5pt solid rgb(0, 0, 0); border-right: 0.5pt solid rgb(0, 0, 0); border-bottom: 0.5pt solid rgb(0, 0, 0); text-align: center; font-style: normal; width: 81.75pt; height: 122.25pt; color: rgb(0, 0, 0); font-size: 12pt; vertical-align: middle; font-weight: 700; text-decoration: none;"
 class="et25" height="163" width="109"><br>
        </td>
        <td
 style="border: 0.5pt solid rgb(0, 0, 0); font-style: normal; width: 1113.75pt; white-space: normal; height: 122.25pt; color: rgb(0, 0, 0); font-size: 10pt; vertical-align: top; font-weight: 700; text-decoration: none;"
 class="et26" colspan="8" height="163" width="1485">Note:<br>
        <span class="font4">Run<span style="">&nbsp;</span>test:<span
 style="">&nbsp;</span><br>
        </span><span class="font4">T:<span style="">&nbsp;</span>LSB<span
 style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span style="">&nbsp;</span>can<span
 style="">&nbsp;</span>run<span style="">&nbsp;</span>completely.<br>
        </span><span class="font4">F:<span style="">&nbsp;</span>There<span
 style="">&nbsp;</span>are<span style="">&nbsp;</span>some<span style="">&nbsp;</span>issues<span
 style="">&nbsp;</span>that<span style="">&nbsp;</span>block<span style="">&nbsp;</span>LSB<span
 style="">&nbsp;</span>test<span style="">&nbsp;</span>suite<span style="">&nbsp;</span>itself<span
 style="">&nbsp;</span>running<span style="">&nbsp;</span>completely.<br>
        </span><span class="font4">T/M:<span style="">&nbsp;</span>LSB<span
 style="">&nbsp;</span>can<span style="">&nbsp;</span>be<span style="">&nbsp;</span>tested<span
 style="">&nbsp;</span>with<span style="">&nbsp;</span>manual<span style="">&nbsp;</span>method.<br>
        </span><span class="font4">T/G:<span style="">&nbsp;</span>LSB<span
 style="">&nbsp;</span>can<span style="">&nbsp;</span>be<span style="">&nbsp;</span>tested<span
 style="">&nbsp;</span>with<span style="">&nbsp;</span>graphic<span style="">&nbsp;</span>method.<br>
        </span><span class="font4">Result:<br>
        </span><span class="font4">No:<span style="">&nbsp;</span>There<span
 style="">&nbsp;</span>is<span style="">&nbsp;</span>no<span style="">&nbsp;</span>result<span
 style="">&nbsp;</span>because<span style="">&nbsp;</span>LSB<span style="">&nbsp;</span>test<span
 style="">&nbsp;</span>suite<span style="">&nbsp;</span>cannot<span style="">&nbsp;</span>run.</span></td>
      </tr>
    </tbody>
  </table>
  <br>
</blockquote>
<br>
It is a&nbsp; preliminary analysis for lsb test. We will give more
information later(include ppc).<br>
A plan about how to fix bugs:<br>
step 1: We will solve bugs which some of lsb test suite can't still run
on lsb-image (The work is now in progress)<br>
step 2: Make two auto script for setting up lsb test environment. One
is for setting on pc , we want to add this script to poky/scripts; the
other is for setting for lsb-image, we want to add this script to
lsb-image in the mode of bb file.&nbsp; (sync up with step 1)<br>
step 3: Write a user manual about how to test lsb-imgae by lsb test
suite and we want to this user manual to lsb-image (after step 2)<br>
step 4: List bugs tested by lsb test suite(sync up with step 1)<br>
step 5: Solve bugs tested by lsb test suite(everyone can attend to fix
bugs)<br>
Method for fixing bugs:<br>
- We will fix bugs for lsb test suite itself on platform x86 firstly
and then apply the result to&nbsp; other platform when step 1 is over.<br>
- We will fix bugs tested by lsb test suite on platform x86 and then
apply the result to other platform.<br>
<br>
We will open a bugzilla for failed items tested by lsb test suite and
make a milestone for fixing bugs with detailed time plan on the next
week.<br>
Please give your suggestion. <br>
<br>
Thanks,<br>
Yan<br>
<br>
</body>
</html>

--------------050406040105020708070605--
