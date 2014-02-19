Return-Path: <championoaks@gmail.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 466DAE007FF
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 15:33:36 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id hu8so1181457vcb.1
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 15:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=IP8QQDhGOT7Om/hA5cRtrAXXE6tShobr9WoPCJVmTCM=;
	b=lM3IZ0fsvkH8m2WaJ72EQ401cIP4YfbNr0lhljaLw9+NfCkdh/JwOiDnHQbPVCMVP5
	MRrhbT58ld7KQ+qbybU7O9zz03jwn06PMrf+0tDpW/Sk0oDsvGvAAh+PpSvo0mA42LR4
	P3Bp00xv5jHUi+CJbaYgepKUtu4V4AwElEGL9DFdFtty+01qtRdeVX4HCffP3OPytXWc
	BENt7hKnXd8O+Cyh9vegwf5h85w62im6we+pOsieJ3i5+pejqLg3x3xaaI8wXNeG9D4Q
	VtHWHVZhFF2zEfWTenOLsWojvl7GwO3sWmMDxmaOvLMiipfVRDnffJBfVA5Igka8kS5a
	DlkQ==
MIME-Version: 1.0
X-Received: by 10.52.104.68 with SMTP id gc4mr22521517vdb.2.1392852815998;
	Wed, 19 Feb 2014 15:33:35 -0800 (PST)
Received: by 10.220.74.5 with HTTP; Wed, 19 Feb 2014 15:33:35 -0800 (PST)
In-Reply-To: <1392848233.14081.278.camel@ted>
References: <CAOqG5mxzcniXx3UaZedqZ2Qvkpw7yOJcSTVBjvnp-RZqZGOZMg@mail.gmail.com>
	<1392848233.14081.278.camel@ted>
Date: Wed, 19 Feb 2014 15:33:35 -0800
Message-ID: <CAOqG5mymLd_u6pujFs8ucjuAtjV0VzKR1yKXahArw5yNze387Q@mail.gmail.com>
From: Roseville House <championoaks@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
Subject: Re: unable to pull packages in recipe
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Feb 2014 23:33:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks for your reply.

I am trying to specify build dependencies  in my recipe "foo".
>>>Build-Depends: debhelper (>= 7.0.50~), autoconf, automake, libtool, libpcre3-dev (>= 7.8), libjson0-dev (>= 0.9), flex, bison, hardening-wrapper, dh-autoreconf, dkms

Taking your advice I changed the line to
DEPENDS = "autoconf automake libtool libpcre libjson flex bison dkms"
and ran into the following error

:~/poky/build$ bitbake foo
Loading cache: 100%
|#################################################################|
ETA:  00:00:00
Loaded 1190 entries from dependency cache.
Parsing recipes: 100%
|###############################################################|
Time: 00:00:00
Parsing of 860 .bb files complete (856 cached, 4 parsed). 1194
targets, 41 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'dkms'
ERROR: Required build target 'fwts' has no buildable providers.
Missing or unbuildable dependency chain was: ['foo', 'dkms']
============================

These are details of dkms which is installed on my host machine. I can
compile the application successfully on my host but its failing within
Poky.
Homepage: http://linux.dell.com/dkms
Vcs-Browser: http://git.debian.org/?p=pkg-dkms/dkms.git
Vcs-Git: git://git.debian.org/pkg-dkms/dkms.git


On Wed, Feb 19, 2014 at 2:17 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2014-02-19 at 11:37 -0800, Roseville House wrote:
>> I have written a recipe to fetch/build/deploy an application which
>> requires following packages
>> DEPENDS = "autoconf automake libtool libpcre3-dev libjson0-dev flex bison dkms"
>>
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing PROVIDES 'libpcre3-dev' (but
>> /home/stangri/poky/foo/recipes-core/foo/foo.bb DEPENDS on or otherwise
>> requires it). Close matches:
>>   libpcre
>> ERROR: Required build target 'fwts' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['foo', 'libpcre3-dev']
>
> You need to use recipe names (PN), not package names in a DEPENDS line.
> This would therefore be libpcre, not libpcre3. Note these are also build
> time dependencies.
>
> If you really want to specify runtime package dependencies, you can
> specify RDEPENDS_${PN} to add runtime dependencies to the ${PN} package.
> Note that this namespace wants untranslated dependencies, as they appear
> in PACKAGES of the associated recipe so this would be libpcre-dev with
> no 3 since that renaming is done later.
>
> Cheers,
>
> Richard
>

