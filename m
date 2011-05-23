Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D86794C80A7B
	for <poky@yoctoproject.org>; Mon, 23 May 2011 07:37:33 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4NCbU0Q011376
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 May 2011 05:37:30 -0700 (PDT)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 23 May 2011 05:37:30 -0700
Message-ID: <4DDA54C2.2000409@windriver.com>
Date: Mon, 23 May 2011 20:36:18 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1305972143.git.xiaofeng.yan@windriver.com>	<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>	<20110521184855.1248D1499BF2@gemini.denx.de>
	<4DD87348.2070700@windriver.com> <4DD98615.8080507@intel.com>
In-Reply-To: <4DD98615.8080507@intel.com>
X-Originating-IP: [128.224.162.178]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sudo: Modify ownership for directory	"/var/lib"
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
X-List-Received-Date: Mon, 23 May 2011 12:37:34 -0000
Content-Type: multipart/alternative;
	boundary="------------000701090402040500040203"

--------------000701090402040500040203
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年05月23日 05:54, Saul Wold wrote:
> On 05/21/2011 07:22 PM, Xiaofeng Yan wrote:
>> On 2011年05月22日 02:48, Wolfgang Denk wrote:
>>> Dear Xiaofeng Yan,
>>>
>>> In 
>>> message<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>  
>>> you wrote:
>>>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>>>
>>>> [YOCTO #1092]
>>>> Solve access permission for directory "/var/lib".
>>>> Makefile from package sudo change the ownership incorrectly.
>>>>
>
> Xiaofeng,
>
> I would suggest you take a look at what nfs-utils is doing at rootfs 
> build time.  That might be the package that's causing problems.
>
> Sau!
>
Hi Saul,

I remove package sudo from task-core-basic.bb and build a new lsb-image 
without sudo. After building  successfully, I startup lsb image without 
sudo on emenlow. I check the access permission for directory "/var/lib"

root@emenlow:/# ls var/ -l
total 5
drwxr-xr-x  2 root root 1024 May 19 10:17 backups
lrwxrwxrwx  1 root root   14 May 23 20:22 cache -> volatile/cache
drwxr-xr-x 11 root root 1024 May 23 20:22 lib
drwxr-sr-x  2 root root 1024 May 19 10:17 local
lrwxrwxrwx  1 root root   13 May 23 20:22 lock -> volatile/lock
lrwxrwxrwx  1 root root   12 May 23 20:22 log -> volatile/log
drwxr-sr-x  2 root root 1024 May 19 10:17 mail
lrwxrwxrwx  1 root root   12 May 23 20:22 run -> volatile/run
drwxr-xr-x  5 root root 1024 May 23 05:54 spool
lrwxrwxrwx  1 root root   12 May 23 20:22 tmp -> volatile/tmp
drwxrwxrwt  7 root root  140 May 23 20:31 volatile

So I think package sudo change access permission for "/var/lib" finally. 
Also I checked file "install_solution.manifest"
.......
  /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/nfs-utils-1.2.3-r2.core2.rpm
  /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/cronie-1.4.7-r2.core2.rpm
  /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/gzip-1.4-r0.core2.rpm
  /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/sudo-1.7.4p6-r0.core2.rpm
......
I don't know whether the packages are installed to image as the sequence 
or not.

>
>>>> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>>> ---
>>>>   meta/recipes-extended/sudo/sudo.inc |    1 +
>>>>   1 files changed, 1 insertions(+), 0 deletions(-)
>>>>
>>>> diff --git a/meta/recipes-extended/sudo/sudo.inc 
>>>> b/meta/recipes-extended/sudo/sudo.inc
>>>> index 6a04a9c..5ea089c 100644
>>>> --- a/meta/recipes-extended/sudo/sudo.inc
>>>> +++ b/meta/recipes-extended/sudo/sudo.inc
>>>> @@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
>>>>
>>>>       chmod 4111 /usr/bin/sudo
>>>>       chmod 0440 /etc/sudoers
>>>> +    chmod 0755 /var/lib
>>> Sorry, but this commit message is misleading.  You don't change the
>>> ownership here, but the file permissions.
>>>
>> Hi Wolfgang Denk,
>> Thanks for your reply. I am make lsb test to pass LSB certification. LSB
>> Test suite check /vat/lib, but failed with the following information.
>> /tset/LSB.fhs/var/lib/lib-tc 1     failed
>>
>>
>>         Message from the test:
>>
>> Reference 5.8-1(A)
>> The /var/lib directory exists and is searchable
>> Unexpected output written to stdout, as shown below:
>> stdout:lsb_test_dir: expected be able to search directory /var/lib, 
>> got an error
>> stdout:ls: cannot open directory /var/lib: Permission denied
>>
>>
>>
>> emenlow$ls /var/lib -l
>> drwx------ 10 root root 4096 May 20 19:21 lib
>>
>> For general machine, the ownership of this directory is as follow:
>> ubuntu$ls /var/lib -l
>> drwxr-xr-x 67 root root 4096 2010-12-15 23:30 lib
>>
>> In fact, many packages make a operation to directory "/var/lib". I find
>> the Makefile from package "sudo" change the ownership. Please review the
>> following patch.
>>
>> --- Makefile.orj 2011-05-21 16:32:35.392833427 +0800
>> +++ Makefile 2011-05-21 16:36:47.979380106 +0800
>> @@ -482,7 +482,7 @@
>> $(DESTDIR)$(visudodir) $(DESTDIR)$(noexecdir) \
>> $(DESTDIR)$(sudoersdir) $(DESTDIR)$(docdir) \
>> $(DESTDIR)$(mandirsu) $(DESTDIR)$(mandirform)
>> - $(SHELL) $(srcdir)/mkinstalldirs -m 0700 $(DESTDIR)$(timedir)
>> + $(SHELL) $(srcdir)/mkinstalldirs -m 0755 $(DESTDIR)$(timedir)
>>
>> install-binaries: install-dirs $(PROGS)
>> $(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 04111 sudo
>> $(DESTDIR)$(sudodir)/sudo
>>
>> So "0700" make this directory without access permission. Perhaps it
>> could not be right method, I think you have a better method to solve
>> this problem. If you have, Please share with me.
>> Thanks for your suggestion again.
>>
>> Thanks
>> Yan
>>> Best regards,
>>>
>>> Wolfgang Denk
>>>
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>


--------------000701090402040500040203
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    On 2011年05月23日 05:54, Saul Wold wrote:
    <blockquote cite="mid:4DD98615.8080507@intel.com" type="cite">On
      05/21/2011 07:22 PM, Xiaofeng Yan wrote:
      <br>
      <blockquote type="cite">On 2011年05月22日 02:48, Wolfgang Denk wrote:
        <br>
        <blockquote type="cite">Dear Xiaofeng Yan,
          <br>
          <br>
          In
          message<a class="moz-txt-link-rfc2396E" href="mailto:d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com">&lt;d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com&gt;</a> 
          you wrote:
          <br>
          <blockquote type="cite">From: Xiaofeng
            Yan<a class="moz-txt-link-rfc2396E" href="mailto:xiaofeng.yan@windriver.com">&lt;xiaofeng.yan@windriver.com&gt;</a>
            <br>
            <br>
            [YOCTO #1092]
            <br>
            Solve access permission for directory "/var/lib".
            <br>
            Makefile from package sudo change the ownership incorrectly.
            <br>
            <br>
          </blockquote>
        </blockquote>
      </blockquote>
      <br>
      Xiaofeng,
      <br>
      <br>
      I would suggest you take a look at what nfs-utils is doing at
      rootfs build time.  That might be the package that's causing
      problems.
      <br>
      <br>
      Sau!
      <br>
      <br>
    </blockquote>
    Hi Saul,<br>
    <br>
    I remove package sudo from task-core-basic.bb and build a new
    lsb-image without sudo. After building  successfully, I startup lsb
    image without sudo on emenlow. I check the access permission for
    directory "/var/lib"<br>
    <small> <br>
      root@emenlow:/# ls var/ -l<br>
      total 5<br>
      drwxr-xr-x  2 root root 1024 May 19 10:17 backups<br>
      lrwxrwxrwx  1 root root   14 May 23 20:22 cache -&gt;
      volatile/cache<br>
      <font color="#009900">drwxr-xr-x 11 root root 1024 May 23 20:22
        lib</font><br>
      drwxr-sr-x  2 root root 1024 May 19 10:17 local<br>
      lrwxrwxrwx  1 root root   13 May 23 20:22 lock -&gt; volatile/lock<br>
      lrwxrwxrwx  1 root root   12 May 23 20:22 log -&gt; volatile/log<br>
      drwxr-sr-x  2 root root 1024 May 19 10:17 mail<br>
      lrwxrwxrwx  1 root root   12 May 23 20:22 run -&gt; volatile/run<br>
      drwxr-xr-x  5 root root 1024 May 23 05:54 spool<br>
      lrwxrwxrwx  1 root root   12 May 23 20:22 tmp -&gt; volatile/tmp<br>
      drwxrwxrwt  7 root root  140 May 23 20:31 volatile</small><br>
    <br>
    So I think package sudo change access permission for "/var/lib"
    finally. Also I checked file "install_solution.manifest"<br>
    .......<br>
    <font color="#ff6600"> /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/nfs-utils-1.2.3-r2.core2.rpm</font><br>
 /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/cronie-1.4.7-r2.core2.rpm<br>
 /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/gzip-1.4-r0.core2.rpm<br>
    <font color="#cc9933"> /media/D/poky/32/poky.e/build/tmp/deploy/rpm/core2/sudo-1.7.4p6-r0.core2.rpm</font><br>
    ......<br>
    I don't know whether the packages are installed to image as the
    sequence or not.  <br>
    <br>
    <blockquote cite="mid:4DD98615.8080507@intel.com" type="cite">
      <br>
      <blockquote type="cite">
        <blockquote type="cite">
          <blockquote type="cite">Signed-off-by: Xiaofeng
            Yan<a class="moz-txt-link-rfc2396E" href="mailto:xiaofeng.yan@windriver.com">&lt;xiaofeng.yan@windriver.com&gt;</a>
            <br>
            ---
            <br>
              meta/recipes-extended/sudo/sudo.inc |    1 +
            <br>
              1 files changed, 1 insertions(+), 0 deletions(-)
            <br>
            <br>
            diff --git a/meta/recipes-extended/sudo/sudo.inc
            b/meta/recipes-extended/sudo/sudo.inc
            <br>
            index 6a04a9c..5ea089c 100644
            <br>
            --- a/meta/recipes-extended/sudo/sudo.inc
            <br>
            +++ b/meta/recipes-extended/sudo/sudo.inc
            <br>
            @@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
            <br>
            <br>
                  chmod 4111 /usr/bin/sudo
            <br>
                  chmod 0440 /etc/sudoers
            <br>
            +    chmod 0755 /var/lib
            <br>
          </blockquote>
          Sorry, but this commit message is misleading.  You don't
          change the
          <br>
          ownership here, but the file permissions.
          <br>
          <br>
        </blockquote>
        Hi Wolfgang Denk,
        <br>
        Thanks for your reply. I am make lsb test to pass LSB
        certification. LSB
        <br>
        Test suite check /vat/lib, but failed with the following
        information.
        <br>
        /tset/LSB.fhs/var/lib/lib-tc 1     failed     <br>
        <br>
        <br>
                Message from the test:
        <br>
        <br>
        Reference 5.8-1(A)
        <br>
        The /var/lib directory exists and is searchable
        <br>
        Unexpected output written to stdout, as shown below:
        <br>
        stdout:lsb_test_dir: expected be able to search directory
        /var/lib, got an error
        <br>
        stdout:ls: cannot open directory /var/lib: Permission denied
        <br>
        <br>
        <br>
        <br>
        emenlow$ls /var/lib -l
        <br>
        drwx------ 10 root root 4096 May 20 19:21 lib
        <br>
        <br>
        For general machine, the ownership of this directory is as
        follow:
        <br>
        ubuntu$ls /var/lib -l
        <br>
        drwxr-xr-x 67 root root 4096 2010-12-15 23:30 lib
        <br>
        <br>
        In fact, many packages make a operation to directory "/var/lib".
        I find
        <br>
        the Makefile from package "sudo" change the ownership. Please
        review the
        <br>
        following patch.
        <br>
        <br>
        --- Makefile.orj 2011-05-21 16:32:35.392833427 +0800
        <br>
        +++ Makefile 2011-05-21 16:36:47.979380106 +0800
        <br>
        @@ -482,7 +482,7 @@
        <br>
        $(DESTDIR)$(visudodir) $(DESTDIR)$(noexecdir) \
        <br>
        $(DESTDIR)$(sudoersdir) $(DESTDIR)$(docdir) \
        <br>
        $(DESTDIR)$(mandirsu) $(DESTDIR)$(mandirform)
        <br>
        - $(SHELL) $(srcdir)/mkinstalldirs -m 0700 $(DESTDIR)$(timedir)
        <br>
        + $(SHELL) $(srcdir)/mkinstalldirs -m 0755 $(DESTDIR)$(timedir)
        <br>
        <br>
        install-binaries: install-dirs $(PROGS)
        <br>
        $(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 04111 sudo
        <br>
        $(DESTDIR)$(sudodir)/sudo
        <br>
        <br>
        So "0700" make this directory without access permission. Perhaps
        it
        <br>
        could not be right method, I think you have a better method to
        solve
        <br>
        this problem. If you have, Please share with me.
        <br>
        Thanks for your suggestion again.
        <br>
        <br>
        Thanks
        <br>
        Yan
        <br>
        <blockquote type="cite">Best regards,
          <br>
          <br>
          Wolfgang Denk
          <br>
          <br>
        </blockquote>
        <br>
        <br>
        <br>
        _______________________________________________
        <br>
        poky mailing list
        <br>
        <a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
        <br>
        <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
        <br>
      </blockquote>
      <br>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000701090402040500040203--
