Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-px0-f173.google.com (mail-px0-f173.google.com
	[209.85.212.173])
	by mx1.pokylinux.org (Postfix) with ESMTP id B76C54C8026D
	for <poky@yoctoproject.org>; Fri, 13 May 2011 06:05:41 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi16 with SMTP id 16so1766416pxi.32
	for <poky@yoctoproject.org>; Fri, 13 May 2011 04:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=nxTfn2IKLNkZhmEMydkntzEgnTmByQ3ZMlyLr1GzkiU=;
	b=ZOvNYRNMubzolh0kJtcPYriPHR/sIUFS6lhrqsPjT8I3oQ+8fYdQ06XRLBMwxhKiWI
	tOfmhNkSSdEGDMpToXFp7Gvt5eVOUFjB0J4GvKtswQY5bzr5+da2xbw0SKmAdVl4qFx4
	jnGzFboEm5AA76XxmoIBkvT79yqYc7lUNCL+k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type;
	b=Yk1mlQbpjW1SpF4cz+CyiP/XsbYLPFwL3NPIAf3SMXbSrsiFFFZoJuLjOAuzHGsT7w
	n04CIsdQKb0O9W/awbykUKwy7bvXEUgKSAe4ny2/6xeOP42umRXN0l47rBngEUdTSxM+
	kP45psMXlSCtH4O8rcTHWutYT+JirP+/xVm0o=
Received: by 10.142.248.27 with SMTP id v27mr752913wfh.404.1305284740500;
	Fri, 13 May 2011 04:05:40 -0700 (PDT)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id 25sm2015438wfb.22.2011.05.13.04.05.37
	(version=SSLv3 cipher=OTHER); Fri, 13 May 2011 04:05:39 -0700 (PDT)
Message-ID: <4DCD107E.5010306@gmail.com>
Date: Fri, 13 May 2011 16:35:34 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110207 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Issue while building for zoom board
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
X-List-Received-Date: Fri, 13 May 2011 11:05:42 -0000
Content-Type: multipart/alternative;
	boundary="------------020308080505010609050008"

--------------020308080505010609050008
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am using bernard branch with meta-extras ( 
git://git.pokylinux.org/meta-extras ).
I made changes in conf/bblayers.conf as follows to make use of 
meta-extras recipes:

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf

# changes incompatibly

LCONF_VERSION = "4"


BBFILES ?= ""

BBLAYERS = " \

   /home/ylal/poky/meta \

   /home/ylal/poky/meta-extras \

   "

While building I got following errors :-

1.  Error in createrepo-native_0.9.8.bb

ERROR: This recipe does not have the LICENSE field set (createrepo-native)
Error parsing 
/home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb: 
(SystemExit(1,), 
'/home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb')
ERROR: Command execution failed: Exited with 1


2.  Bitbake used to ignore these but no longer does so, please fix your 
metadata as errors are likely as a result of this change.
ERROR: Error parsing 
/home/ylal/pds/poky/meta-extras/recipes/xorg-lib/libfs_1.0.1.bb: Could 
not include required file xorg-lib-common.inc


Can any one guide me ?


---
Yogesh

--------------020308080505010609050008
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    Hi,<br>
    <br>
    I am using bernard branch with meta-extras ( <a
      href="git://git.pokylinux.org/meta-extras">git://git.pokylinux.org/meta-extras</a>
    ).<br>
    I made changes in conf/bblayers.conf as follows to make use of
    meta-extras recipes:<br>
    <br>
    <address># LAYER_CONF_VERSION is increased each time
      build/conf/bblayers.conf</address>
    <address># changes incompatibly</address>
    <address>LCONF_VERSION = "4" </address>
    <address><br>
      BBFILES ?= ""</address>
    <address>BBLAYERS = " \ </address>
    <address>&nbsp; /home/ylal/poky/meta \</address>
    <address>&nbsp; /home/ylal/poky/meta-extras \</address>
    <address>&nbsp; "</address>
    While building I got following errors :-<br>
    <br>
    1.&nbsp; Error in createrepo-native_0.9.8.bb<br>
    <br>
    ERROR: This recipe does not have the LICENSE field set
    (createrepo-native)<br>
    Error parsing
    /home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb:
    (SystemExit(1,),
    '/home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb')<br>
    ERROR: Command execution failed: Exited with 1<br>
    <br>
    <br>
    2.&nbsp; Bitbake used to ignore these but no longer does so, please fix
    your metadata as errors are likely as a result of this change.<br>
    ERROR: Error parsing
    /home/ylal/pds/poky/meta-extras/recipes/xorg-lib/libfs_1.0.1.bb:
    Could not include required file xorg-lib-common.inc<br>
    <br>
    <br>
    Can any one guide me ?<br>
    <br>
    <br>
    ---<br>
    Yogesh<br>
  </body>
</html>

--------------020308080505010609050008--
