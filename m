Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A73C2E0044A
	for <poky@yoctoproject.org>; Wed, 18 Apr 2012 07:06:41 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B4540F8123F; Wed, 18 Apr 2012 08:06:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 80758F811E2;
	Wed, 18 Apr 2012 08:06:36 -0600 (MDT)
Message-ID: <4F8ECA6C.4010508@mlbassoc.com>
Date: Wed, 18 Apr 2012 08:06:36 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: caterwaul <caterwaul@163.com>
References: <24d96cc9.1a1d6.136c536bdf4.Coremail.caterwaul@163.com>
	<4F8EAC21.1030905@mlbassoc.com>
	<2cd5df9.23e9d.136c5be57cf.Coremail.caterwaul@163.com>
In-Reply-To: <2cd5df9.23e9d.136c5be57cf.Coremail.caterwaul@163.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [yocto] problem about package and subpackage
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
X-List-Received-Date: Wed, 18 Apr 2012 14:06:41 -0000
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-18 07:57, caterwaul wrote:
> At  2012-04-18  19:57:21,"Gary  Thomas"  <gary@mlbassoc.com>  wrote:
>>On  2012-04-18  05:29,  caterwaul  wrote:
>>>  Hi,
>>>
>>>  I  wanted  to  add  dhcp(4.2.0)  into  my  image.  And  I  added  "dhcp"  into  IMAGE_INSTALL  of  my  image's  bb  file.  After  I  runing  bitbake,  the  dhcp  package  is  normally  fetched  and  compiled
>>>  and  so  on.  But  during  do_rootfs  bitbake  reported  as  follow:
>>>  Processing  dhcp...
>>>  Unable  to  find  package  dhcp  (dhcp)!
>>>  ERROR:  Function  'do_rootfs'  failed
>>>
>>>  I  note  that  in  /meta/recipes-connectivity/dhcp/dhcp4.inc  the  dhcp  package  is  split  into  4  subpackages(PACKAGES  +=  "dhcp-server  dhcp-client  dhcp-relay  dhcp-omshell").  Now  If  I
>>>  remove  "dhcp"  from  IMAGE_INSTALL  and  add  these  4  subpackages'  name  into  IMAGE_INSTALL  and  run  bitbake  AGAIN,  they  can  be  normally  added  into  my  final  image.
>>>
>>>  I've  tried  to  modify  last  part  of  dhcp4.inc  as  follow:  But  bitbake  still  reported  "Unable  to  find  package  dhcp"
>>>  FILES_${PN}  =  ""
>>>  FILES_${PN}  +=  "${sbindir}/dhcpd  ${sysconfdir}/init.d/dhcp-server  ${sysconfdir}/default/dhcp-server  ${sysconfdir}/dhcp/dhcpd.conf"
>>>  FILES_${PN}  +=  "${sbindir}/dhcrelay  ${sysconfdir}/init.d/dhcp-relay  ${sysconfdir}/default/dhcp-relay"
>>>  FILES_${PN}  +=  "${base_sbindir}/dhclient  ${base_sbindir}/dhclient-script  ${sysconfdir}/dhcp/dhclient.conf"
>>>  FILES_${PN}  +=  "${bindir}/omshell"
>>>  RDEPENDS_${PN}  =  "bash"
>>>
>>>  So  How  should  I  config  bitbake  to  get  my  image  with  dhcp  by  running  bitbake  ONLY  ONCE?
>>
>>There  is  no  "dhcp"  package,  only  dhcp-client,  dhcp-relay,  dhcp-server.
>>Pick  the  functionality  you  need  and  use  the  appropriate  package(s)
>>
>
>
> Thank you very much. But maybe my question is not clear. What I mean is:
> If I pick dhcp-server dhcp-client dhcp-relay and dhcp-omshell, bitbake will NOT start to build and report can NOT find these packages. On the other hand, if I pick dhcp, bitbake
> will start to build, but at do_rootfs stage it will report "Unable to find package dhcp (dhcp)!"(at this moment all dhcp-xxx packages has actually been generated there). So I want
> to know how to config bitbake to complete the build and produce image with whole or part of dhcp.

You are confusing packages with recipes.  Bitbake only knows how to
build recipes which in turn create packages.  Most of the time, the
packages have the same name as the recipe, but not always.  Sometimes
a recipe only creates "component" packages which, as in the case of dhcp,
do not include a package with exactly the same name as the recipe.

In order to get any of these component packages built, one needs to
tell bitbake to build the recipe (if you are trying to force it on
the command line).  However, the image needs to use the package names,
as that's what gets installed.

Maybe a bit confusing, but that's how it works.

n.b. Please keep replies on the mailing list so that everyone may benefit


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

