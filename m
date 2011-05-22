Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD37D4C8026D
	for <poky@yoctoproject.org>; Sat, 21 May 2011 21:22:59 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4M2MsLm009448
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 21 May 2011 19:22:54 -0700 (PDT)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 21 May 2011 19:22:53 -0700
Message-ID: <4DD87348.2070700@windriver.com>
Date: Sun, 22 May 2011 10:22:00 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <cover.1305972143.git.xiaofeng.yan@windriver.com>
	<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>
	<20110521184855.1248D1499BF2@gemini.denx.de>
In-Reply-To: <20110521184855.1248D1499BF2@gemini.denx.de>
X-Originating-IP: [128.224.162.178]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sudo: Modify ownership for directory "/var/lib"
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
X-List-Received-Date: Sun, 22 May 2011 02:23:00 -0000
Content-Type: multipart/alternative;
	boundary="------------080808010308070105080705"

--------------080808010308070105080705
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2011?05?22? 02:48, Wolfgang Denk wrote:
> Dear Xiaofeng Yan,
>
> In message<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>  you wrote:
>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>
>> [YOCTO #1092]
>> Solve access permission for directory "/var/lib".
>> Makefile from package sudo change the ownership incorrectly.
>>
>> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>> ---
>>   meta/recipes-extended/sudo/sudo.inc |    1 +
>>   1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
>> index 6a04a9c..5ea089c 100644
>> --- a/meta/recipes-extended/sudo/sudo.inc
>> +++ b/meta/recipes-extended/sudo/sudo.inc
>> @@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
>>
>>   	chmod 4111 /usr/bin/sudo
>>   	chmod 0440 /etc/sudoers
>> +	chmod 0755 /var/lib
> Sorry, but this commit message is misleading.  You don't change the
> ownership here, but the file permissions.
>
Hi Wolfgang Denk,
Thanks for your reply. I am make lsb test to pass LSB certification. LSB 
Test suite check /vat/lib, but failed with the following information.
/tset/LSB.fhs/var/lib/lib-tc 1 	failed 	


        Message from the test:

Reference 5.8-1(A)
The /var/lib directory exists and is searchable
Unexpected output written to stdout, as shown below:
stdout:lsb_test_dir: expected be able to search directory /var/lib, got an error
stdout:ls: cannot open directory /var/lib: Permission denied



emenlow$ls /var/lib -l
drwx------ 10 root root 4096 May 20 19:21 lib

For general machine, the ownership  of this directory is as follow:
ubuntu$ls /var/lib -l
drwxr-xr-x 67 root root 4096 2010-12-15 23:30 lib

In fact, many packages make a operation to directory "/var/lib". I find 
the Makefile from package "sudo" change the ownership. Please  review 
the following patch.

--- Makefile.orj    2011-05-21 16:32:35.392833427 +0800
+++ Makefile    2011-05-21 16:36:47.979380106 +0800
@@ -482,7 +482,7 @@
          $(DESTDIR)$(visudodir) $(DESTDIR)$(noexecdir) \
          $(DESTDIR)$(sudoersdir) $(DESTDIR)$(docdir) \
          $(DESTDIR)$(mandirsu) $(DESTDIR)$(mandirform)
-   $(SHELL) $(srcdir)/mkinstalldirs -m 0700 $(DESTDIR)$(timedir)
+   $(SHELL) $(srcdir)/mkinstalldirs -m 0755 $(DESTDIR)$(timedir)

   install-binaries: install-dirs $(PROGS)
      $(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 04111 sudo
$(DESTDIR)$(sudodir)/sudo

So "0700" make this directory without access permission. Perhaps it 
could not be right method, I think you have a better method to solve 
this problem. If you have, Please share with me.
Thanks for your suggestion again.

Thanks
Yan
> Best regards,
>
> Wolfgang Denk
>


--------------080808010308070105080705
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    On 2011&#24180;05&#26376;22&#26085; 02:48, Wolfgang Denk wrote:
    <blockquote cite="mid:20110521184855.1248D1499BF2@gemini.denx.de"
      type="cite">
      <pre wrap="">Dear Xiaofeng Yan,

In message <a class="moz-txt-link-rfc2396E" href="mailto:d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com">&lt;d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com&gt;</a> you wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">From: Xiaofeng Yan <a class="moz-txt-link-rfc2396E" href="mailto:xiaofeng.yan@windriver.com">&lt;xiaofeng.yan@windriver.com&gt;</a>

[YOCTO #1092]
Solve access permission for directory "/var/lib".
Makefile from package sudo change the ownership incorrectly.

Signed-off-by: Xiaofeng Yan <a class="moz-txt-link-rfc2396E" href="mailto:xiaofeng.yan@windriver.com">&lt;xiaofeng.yan@windriver.com&gt;</a>
---
 meta/recipes-extended/sudo/sudo.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
index 6a04a9c..5ea089c 100644
--- a/meta/recipes-extended/sudo/sudo.inc
+++ b/meta/recipes-extended/sudo/sudo.inc
@@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
 
 	chmod 4111 /usr/bin/sudo
 	chmod 0440 /etc/sudoers
+	chmod 0755 /var/lib
</pre>
      </blockquote>
      <pre wrap="">
Sorry, but this commit message is misleading.  You don't change the
ownership here, but the file permissions.

</pre>
    </blockquote>
    Hi Wolfgang Denk,<br>
    Thanks for your reply. I am make lsb test to pass LSB certification.
    LSB Test suite check /vat/lib, but failed with the following
    information.<br>
    <table class="problem_table">
      <tbody>
        <tr id="tr_core.journal.125" class="ptl_red" title="Click here!">
          <td>/tset/LSB.fhs/var/lib/lib-tc <span style="color: rgb(0,
              0, 128);">1</span></td>
          <td class="fw1">failed</td>
          <td class="fw2" id="td2_core.journal.125"><br>
          </td>
        </tr>
        <tr>
          <td colspan="3" class="pdu">
            <div class="ptd_red" id="core.journal.125" style="">
              <h4>Message from the test:</h4>
              <pre style="overflow: auto;">Reference 5.8-1(A)
The /var/lib directory exists and is searchable
Unexpected output written to stdout, as shown below:
stdout:lsb_test_dir: expected be able to search directory /var/lib, got an error
stdout:ls: cannot open directory /var/lib: Permission denied
</pre>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
    <br>
    <br>
    emenlow$ls /var/lib -l<br>
    drwx------ 10 root root 4096 May 20 19:21 lib<br>
    <br>
    For general machine, the ownership&nbsp; of this directory is as follow:<br>
    ubuntu$ls /var/lib -l<br>
    drwxr-xr-x 67 root root 4096 2010-12-15 23:30 lib<br>
    <br>
    In fact, many packages make a operation to directory "/var/lib". I
    find the Makefile from package "sudo" change the ownership. Please&nbsp;
    review the following patch.<br>
    &nbsp;&nbsp; <br>
    --- Makefile.orj&nbsp;&nbsp;&nbsp; 2011-05-21 16:32:35.392833427 +0800<br>
    +++ Makefile&nbsp;&nbsp;&nbsp; 2011-05-21 16:36:47.979380106 +0800<br>
    @@ -482,7 +482,7 @@<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(DESTDIR)$(visudodir) $(DESTDIR)$(noexecdir) \<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(DESTDIR)$(sudoersdir) $(DESTDIR)$(docdir) \<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(DESTDIR)$(mandirsu) $(DESTDIR)$(mandirform)<br>
    <font color="#ff0000">-&nbsp;&nbsp; $(SHELL) $(srcdir)/mkinstalldirs -m 0700
      $(DESTDIR)$(timedir)</font><br>
    +&nbsp;&nbsp; $(SHELL) $(srcdir)/mkinstalldirs -m 0755 $(DESTDIR)$(timedir)<br>
    <br>
    &nbsp; install-binaries: install-dirs $(PROGS)<br>
    &nbsp;&nbsp;&nbsp;&nbsp; $(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 04111
    sudo<br>
    $(DESTDIR)$(sudodir)/sudo<br>
    <br>
    So "0700" make this directory without access permission. Perhaps it
    could not be right method, I think you have a better method to solve
    this problem. If you have, Please share with me. <br>
    Thanks for your suggestion again.<br>
    <br>
    Thanks<br>
    Yan&nbsp; <br>
    <blockquote cite="mid:20110521184855.1248D1499BF2@gemini.denx.de"
      type="cite">
      <pre wrap="">Best regards,

Wolfgang Denk

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------080808010308070105080705--
