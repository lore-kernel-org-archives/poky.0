Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C34834C80093;
	Fri, 18 Feb 2011 00:35:31 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1I6ZURi010033;
	Thu, 17 Feb 2011 22:35:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 17 Feb 2011 22:35:29 -0800
Received: from [128.224.162.178] ([128.224.162.178]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 17 Feb 2011 22:35:28 -0800
Message-ID: <4D5E1342.2050906@windriver.com>
Date: Fri, 18 Feb 2011 14:35:46 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: yocto@linux.intel.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	poky@yoctoproject.org
X-OriginalArrivalTime: 18 Feb 2011 06:35:29.0200 (UTC)
	FILETIME=[08BD5300:01CBCF36]
Subject: The status for LSB Test (2011-02-14 --- 2011-02-18)
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
X-List-Received-Date: Fri, 18 Feb 2011 06:35:32 -0000
Content-Type: multipart/alternative;
	boundary="------------080906090109050105090805"

--------------080906090109050105090805
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

  We have filled the newest list on the next Table-1 and made a  
preliminary draft or plan according the meeting with Intel Thursday . If 
you have good suggestions, I will add your ideas to plan for Yocto 1.0 
LSB Test.


                                                                      
                                                                         
                                                                         
Table-1    The status for lsb test
*LSB Test Suite* 	*Version* 	*Result* 	*Left work* 	*May/Days* 	*Start 
Date* 	*Finish Date* 	*Status* 	*Completed Percentage* 	*Defects 
filed* 	*Developer* 	*Risk/Issue*
Cpp-T2C Tests 	4.0.2-1 	Passed 	submit 	2 	2010-12-20 	2010-12-21 	In 
Progress 	90% 	
	Jingdong Lu 	
Libstdc++ Tests 	4.1.0-7 	Passed 	submit 	3 	2010-12-22 	2010-12-24 	In 
Progress 	90% 	
	Jingdong Lu 	
Perl Tests 	4.0.7-1 	Passed 	None 	2 	2010-12-27 	2010-12-28 	Done 	100% 	
	Jingdong Lu 	
Python Runtime Tests 	4.0.2-1 	Passed 	submit 	3 	2010-12-29 
2010-12-31 	In Progress 	90% 	Bug 614(Open) 	Jingdong Lu 	
Python Tests 	2.4.5-2 	Passed 	submit 	0 	
	
	In Progress 	90% 	
	Jingdong Lu 	
OLVER Core Tests 	
	Passed 	submit 	6 	2011-1-4 	2011-1-11 	In Progress 	90% 	
	Jingdong Lu 	
Command Check 	4.0.0-2 	Passed 	LSB 	3 	2011-1-12 	2011-1-14 	In 
Progress 	90% 	BUG 520(Closed) 	Jingdong Lu 	
Tcl Tests 	8.5.7-6 	Passed 	None 	5 	2011-1-17 	2011-1-21 	Done 	100% 	
	Jingdong Lu 	
Library Check 	4.0.2-1 	Failures: 2 	qt3 	5 	2011-1-12 	2011-1-18 	In 
Progress 	80% 	
	Jingdong Lu 	Query if we need to handle any QT3 issues

	
	
	
	
	
	
	
	
	
	
	
Desktop Tests 	
	Passed 	submit 	4 	2010-12-20 	2010-12-29 	In Progress 	90% 	BUG 
567(Closed)
BUG 569(Closed)
BUG 570(Closed) 	Xiaofeng Yan 	
Desktop-T2C Tests 	4.0.2-1 	Failures: 1 	LSB 	4 	2010-12-20 
2010-12-29 	Block 	90% 	BUG 571(Accepted) 	Xiaofeng Yan 	Test suite led 
to these failed items.
http://bugs.linuxbase.org/show_bug.cgi?id=3153
Qt4-Azov Tests 	4.0.2-1 	Failures:3 	LSB 	4 	2010-12-30 	2011-1-5 
Block 	90% 	
	Xiaofeng Yan 	Test suite led to these failed items.
(Qlocale)
http://bugs.linuxbase.org/show_bug.cgi?id=3125
(QmenBar)
http://bugs.linuxbase.org/show_bug.cgi?id=3124
Http://bugs.linuxbase.org/show_bug.cgi?id=3067
Xts5 Tests 	5.1.5-19 	Passed 	submit 	5 	2011-1-6 	2010-1-12 	In 
Progress 	90% 	
	Xiaofeng Yan 	
Core Tests 	4.0.5-1 	Failures: 16 	LSB 	5 	2011-1-19 	2011-1-25 
Block 	90% 	
	Xiaofeng Yan
Jingdong Lu 	Test suite led to these failed items:
T.c_iflag
http://bugs.linuxbase.org/show_bug.cgi?id=3033
T.tcgetattr
http://bugs.linuxbase.org/show_bug.cgi?id=3033
http://bugs.linuxbase.org/show_bug.cgi?id=2071
Some bugs related to hardware:
/tset/LSB.os/ioprim/readv_L/T.readv_L 24
/tset/LSB.os/ioprim/writev_L/T.writev_L 30
/tset/LSB.os/libm/fpeDivZero/T.fpeDivZero 2
Qt3-Azov Tests 	4.0.2-1 	Passed 	None 	4 	2011-2-14 	2011-2-17 	Done 	100% 	
	Xiaofeng Yan 	
LSB Test Suite 	
	
	creat-lsb-image
LSB_Setup.sh 	0 	
	
	Done 	100% 	
	Xiaofeng Yan 	

	
	
	
	
	
	
	
	
	
	
	
X86_32 LSB Finish Date 	2011-2-17 	
	
	
	
	
	
	
	
	
	
Re-test on X86_64 & ppc Finish Date 	2011-3-11 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
Yocto M3 Stabilize Finish Date 	2011-2-11 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
Tested on: (self built LSB image) 	
	
	
	
	
	
	
	
	
	
	


The work for lsb test has finished by now . We are pruning file 
task-poky-lsb.bb which contains many unnecessary packages.

Now there aren't still a clear ideas about what should do in Yocto 1.0 
for lsb test. We think we should get the next object in Yocto 1.0 for 
LSB test.


Table-2: LSB Test Plan

Target Platfrom

	

Tester

	

Start Time

Qemu (x86_64,arm,ppc)

	

Wind River

	


Hardware(ppc,arm)

	

Wind River

	


Hardware(x86,x86_64)

	

Intel

	


Tester can report bugs from lsb test to bugzilla and we will solve it as 
soon as possible. If all test results are same as qeme x86, then we 
think that we achieve Yocto 1.0's aim. If you have better proposal, 
Please inform us and we can modified our goal according to your 
proposal. Perhaps your plan is better and suit Yocto 1.0 LSB test better.




--------------080906090109050105090805
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    Hi All,<br>
    <br>
    &nbsp;We have filled the newest list on the next Table-1 and made a&nbsp;
    preliminary draft or plan according the meeting with Intel Thursday
    . If you have good suggestions, I will add your ideas to plan for
    Yocto 1.0 LSB Test. <br>
    <br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <br>
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Table-1&nbsp;&nbsp;&nbsp; The status for lsb test<br>
    <style type="text/css">td p { margin-bottom: 0cm; }p { margin-bottom: 0.21cm; }</style>
    <style>body, div, table, thead, tbody, tfoot, tr, th, td, p { font-family: "DejaVu Sans"; font-size: x-small; }</style>
    <table cols="12" frame="VOID" rules="NONE" border="0"
      cellspacing="0">
      <colgroup><col width="162"><col width="78"><col width="109"><col
          width="148"><col width="95"><col width="109"><col width="117"><col
          width="88"><col width="206"><col width="178"><col width="102"><col
          width="343"></colgroup> <tbody>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="TOP" width="162" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">LSB Test Suite</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="78" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Version</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Result</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="148" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Left work</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="95" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">May/Days</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Start Date</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="117" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Finish Date</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="88" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Status</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="206" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Completed Percentage</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="178" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Defects filed</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="102" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Developer</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="343" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Risk/Issue</font></b></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Cpp-T2C

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-21</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Libstdc++

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.1.0-7</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-22</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-24</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Perl

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.7-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">None</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-27</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-28</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Python

              Runtime Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-29</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-31</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Bug 614(Open)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Python

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">2.4.5-2</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">0</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">OLVER

              Core Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">6</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-11</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="39"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Command

              Check</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.0-2</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">LSB</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-12</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-14</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">BUG 520(Closed)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" height="21" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3">Tcl Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font face="FreeSerif"
              size="3">8.5.7-6</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">None</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-17</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-21</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="36"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Library

              Check</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures: 2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"> qt3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-12</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-18</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">80%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Query if we
              need to handle any QT3 issues</font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="20"
            valign="TOP" align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="51"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Desktop

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-29</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">BUG
              567(Closed)<br>
              BUG 569(Closed)<br>
              BUG 570(Closed)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-bottom: 1px solid rgb(26, 26, 26);
            border-left: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" height="71" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">Desktop-T2C
              Tests</font></td>
          <td style="border-bottom: 1px solid rgb(26, 26, 26);
            border-left: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures: 1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">LSB</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-29</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">BUG
              571(Accepted)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(0, 0, 0);" valign="MIDDLE"
            align="LEFT">Test suite led to these failed items. <br>
            <a moz-do-not-send="true" class="moz-txt-link-freetext"
              href="http://bugs.linuxbase.org/show_bug.cgi?id=3153">http://bugs.linuxbase.org/show_bug.cgi?id=3153</a></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="113"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Qt4-Azov

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures:3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">LSB</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-30</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-5</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(0, 0, 0);" align="LEFT">Test
            suite led to these failed items.<br>
            (Qlocale)<br>
            <a moz-do-not-send="true" class="moz-txt-link-freetext"
              href="http://bugs.linuxbase.org/show_bug.cgi?id=3125">http://bugs.linuxbase.org/show_bug.cgi?id=3125</a><br>
            (QmenBar)<br>
            <a moz-do-not-send="true" class="moz-txt-link-freetext"
              href="http://bugs.linuxbase.org/show_bug.cgi?id=3124">http://bugs.linuxbase.org/show_bug.cgi?id=3124</a><br>
            <a moz-do-not-send="true" class="moz-txt-link-freetext"
              href="Http://bugs.linuxbase.org/show_bug.cgi?id=3067">Http://bugs.linuxbase.org/show_bug.cgi?id=3067</a></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Xts5

              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">5.1.5-19</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-6</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-1-12</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" height="124" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3">Core Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font face="FreeSerif"
              size="3">4.0.5-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures: 16</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">LSB</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">5</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-1-19</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-1-25</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan<br>
              Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Test suite led
              to these failed items:<br>
              T.c_iflag<br>
              <a moz-do-not-send="true" class="moz-txt-link-freetext"
                href="http://bugs.linuxbase.org/show_bug.cgi?id=3033">http://bugs.linuxbase.org/show_bug.cgi?id=3033</a><br>
              T.tcgetattr<br>
              <a moz-do-not-send="true" class="moz-txt-link-freetext"
                href="http://bugs.linuxbase.org/show_bug.cgi?id=3033">http://bugs.linuxbase.org/show_bug.cgi?id=3033</a><br>
              <a moz-do-not-send="true"
                href="http://bugs.linuxbase.org/show_bug.cgi?id=2071">http://bugs.linuxbase.org/show_bug.cgi?id=2071</a><br>
              Some bugs related to hardware:<br>
              /tset/LSB.os/ioprim/readv_L/T.readv_L 24<br>
              /tset/LSB.os/ioprim/writev_L/T.writev_L 30<br>
              /tset/LSB.os/libm/fpeDivZero/T.fpeDivZero 2<br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" height="20" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3"> Qt3-Azov Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font face="FreeSerif"
              size="3">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">None</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">4</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-2-14</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-2-17</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">LSB

              Test Suite</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">creat-lsb-image

              <br>
              LSB_Setup.sh</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">0</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#94bd5e"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td height="45" valign="TOP" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">X86_32

              LSB Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-2-17</font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Re-test

              on X86_64 &amp; ppc Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-3-11</font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td height="20" valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Yocto

              M3 Stabilize Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-2-11</font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td height="20" valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
          <td align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Tested

              on: (self built LSB image)</font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="LEFT"><font size="3"><br>
            </font></td>
        </tr>
      </tbody>
    </table>
    <p style="margin-bottom: 0cm;"><font face="DejaVu Serif, serif"><br>
        The work for lsb test has finished by now . We are pruning file
        task-poky-lsb.bb which contains many unnecessary packages. </font></p>
    <p style="margin-bottom: 0cm;"><font face="DejaVu Serif, serif">Now
        there aren't still a clear ideas about what should do in Yocto
        1.0 for lsb test. We think we should get the next object in
        Yocto 1.0 for LSB test.</font></p>
    <p style="margin-bottom: 0cm;"><br>
    </p>
    <p style="margin-bottom: 0cm;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      <font face="DejaVu Serif, serif">Table-2: LSB Test Plan </font> </p>
    <table width="505" cellpadding="4" cellspacing="0">
      <col width="208"> <col width="101"> <col width="169"> <tbody>
        <tr valign="TOP">
          <td style="border-width: 1px medium 1px 1px; border-style:
            solid none solid solid; border-color: rgb(0, 0, 0)
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding:
            0.1cm 0cm 0.1cm 0.1cm;" width="208">
            <p align="CENTER"><font face="DejaVu Serif, serif">Target
                Platfrom</font></p>
          </td>
          <td style="border-width: 1px medium 1px 1px; border-style:
            solid none solid solid; border-color: rgb(0, 0, 0)
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding:
            0.1cm 0cm 0.1cm 0.1cm;" width="101">
            <p align="CENTER"><font face="DejaVu Serif, serif">Tester</font></p>
          </td>
          <td style="border: 1px solid rgb(0, 0, 0); padding: 0.1cm;"
            width="169">
            <p align="CENTER"><font face="DejaVu Serif, serif">Start
                Time</font></p>
          </td>
        </tr>
        <tr valign="TOP">
          <td style="border-width: medium medium 1px 1px; border-style:
            none none solid solid; border-color: -moz-use-text-color
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding: 0cm
            0cm 0.1cm 0.1cm;" width="208">
            <p><font face="DejaVu Serif, serif">Qemu (x86_64,arm,ppc)</font></p>
          </td>
          <td style="border-width: medium medium 1px 1px; border-style:
            none none solid solid; border-color: -moz-use-text-color
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding: 0cm
            0cm 0.1cm 0.1cm;" width="101">
            <p align="CENTER"><font face="DejaVu Serif, serif">Wind
                River</font></p>
          </td>
          <td style="border-width: medium 1px 1px; border-style: none
            solid solid; border-color: -moz-use-text-color rgb(0, 0, 0)
            rgb(0, 0, 0); padding: 0cm 0.1cm 0.1cm;" width="169">
            <p align="CENTER"><br>
            </p>
          </td>
        </tr>
        <tr valign="TOP">
          <td style="border-width: medium medium 1px 1px; border-style:
            none none solid solid; border-color: -moz-use-text-color
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding: 0cm
            0cm 0.1cm 0.1cm;" width="208">
            <p><font face="DejaVu Serif, serif">Hardware(ppc,arm)</font></p>
          </td>
          <td style="border-width: medium medium 1px 1px; border-style:
            none none solid solid; border-color: -moz-use-text-color
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding: 0cm
            0cm 0.1cm 0.1cm;" width="101">
            <p align="CENTER"><font face="DejaVu Serif, serif">Wind
                River</font></p>
          </td>
          <td style="border-width: medium 1px 1px; border-style: none
            solid solid; border-color: -moz-use-text-color rgb(0, 0, 0)
            rgb(0, 0, 0); padding: 0cm 0.1cm 0.1cm;" width="169">
            <p align="CENTER"><br>
            </p>
          </td>
        </tr>
        <tr valign="TOP">
          <td style="border-width: medium medium 1px 1px; border-style:
            none none solid solid; border-color: -moz-use-text-color
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding: 0cm
            0cm 0.1cm 0.1cm;" width="208">
            <p><font face="DejaVu Serif, serif">Hardware(x86,x86_64)</font></p>
          </td>
          <td style="border-width: medium medium 1px 1px; border-style:
            none none solid solid; border-color: -moz-use-text-color
            -moz-use-text-color rgb(0, 0, 0) rgb(0, 0, 0); padding: 0cm
            0cm 0.1cm 0.1cm;" width="101">
            <p align="CENTER"><font face="DejaVu Serif, serif">Intel</font></p>
          </td>
          <td style="border-width: medium 1px 1px; border-style: none
            solid solid; border-color: -moz-use-text-color rgb(0, 0, 0)
            rgb(0, 0, 0); padding: 0cm 0.1cm 0.1cm;" width="169">
            <p align="CENTER"><br>
            </p>
          </td>
        </tr>
      </tbody>
    </table>
    <p style="margin-bottom: 0cm;"><font face="DejaVu Serif, serif">Tester
can

        report bugs from lsb test to bugzilla and we will solve it as
        soon as possible. If all test results are same as qeme x86, then
        we think that we achieve Yocto 1.0's aim. If you have better
        proposal, Please inform us and we can modified our goal
        according to your proposal. Perhaps your plan is better and suit
        Yocto 1.0 LSB test better.</font></p>
    <br>
    <br>
  </body>
</html>

--------------080906090109050105090805--
