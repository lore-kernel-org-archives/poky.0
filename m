Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C425BE00502
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 08:11:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8GFB38l021392
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Sep 2011 08:11:03 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 16 Sep 2011 08:11:02 -0700
Message-ID: <4E736705.3040005@windriver.com>
Date: Fri, 16 Sep 2011 11:11:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110914 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted>
In-Reply-To: <1316185585.20858.29.camel@ted>
Cc: poky@yoctoproject.org, chinmaya hoshing <cahoshing@gmail.com>
Subject: Re: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Fri, 16 Sep 2011 15:11:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-16 11:06 AM, Richard Purdie wrote:
> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
>> <bruce.ashfield@gmail.com>  wrote:
>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing<cahoshing@gmail.com>  wrote:
>>>> Hi ,
>>>> I am building poky-build minimal live image for fishriver machine on 64 bit
>>>> host machine.
>>>> As I am having limited internet band-width, so I have identified all the
>>>> dependent packages and setup a Apache server on my local system so that I
>>>> can redirect the SRC_URI of all the packages to my local server.
>>>> I have changed the related recipes to build  minimal live image, and modify
>>>> bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages" , in side
>>>> packages I have tars which  was present "build/download" folder.
>>>> While building linux-yocto, fetch and unpack was done but during kernel
>>>> checkout whatever git commits I have done previously in poky source were
>>>> flashed out (lost),  also the only recipe remains in  meta/recipe-kernel/ is
>>>> linux .
>>>>
>>>> Following are the changes made in
>>>> meta/recipes-kernel/linux/linux-yocto_git.bb
>>>> #SRCREV_FORMAT = "meta_machine"
>>>> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
>>>>   // This tar file I took from
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2
>>>> PV = "${LINUX_VERSION}"
>>>> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified
>>>> PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
>>>> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
>>>>
>>>> Can any one help me to find the solution that if I had to pull linux kernel
>>>> source from tar file or such and not from git repository. What things I have
>>>> to do.
>>>
>>> The linux-yocto recipes are designed from the ground up to work on a git
>>> based repository, and there's really no way to get around that fact (and no
>>> plans to make any changes in this area).
>>
>> Thinking further about this, if the tgz actually was just a tarball of the git
>> repositories (including the git blobs), it could work.
>
> This is exactly what we use behind the scenes for mirroring the git
> repositories so this should work. It should be possible to use our
> existing PREMIRROR code to avoid having to rewrite individual recipes
> though.
>
> It will firstly unpack the tarball, then access whether the revisions it
> needs are present. If they're not, it will then (and only then) try and
> fetch them over the network. If the tarball is complete it will
> therefore not touch the network. If its incomplete it will only fetch
> the different (delta).

That's what my slightly deeper look in the code told me as
well. As long as what lands in the working directory is the same,
the recipes don't care where it came from.

But should the preferred version have to change to pickup that
tarball ? That's the part that eludes me.

Bruce

>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


