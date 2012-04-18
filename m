Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C3D1E013E5
	for <poky@yoctoproject.org>; Wed, 18 Apr 2012 08:45:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3IFjSFk029940
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 18 Apr 2012 08:45:28 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 18 Apr 2012 08:45:27 -0700
Message-ID: <4F8EE197.7020404@windriver.com>
Date: Wed, 18 Apr 2012 10:45:27 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <24d96cc9.1a1d6.136c536bdf4.Coremail.caterwaul@163.com>
	<4F8EAC21.1030905@mlbassoc.com>
	<2cd5df9.23e9d.136c5be57cf.Coremail.caterwaul@163.com>
	<4F8ECA6C.4010508@mlbassoc.com>
	<6f919fc8.2471e.136c5eb4771.Coremail.caterwaul@163.com>
	<4F8ED502.9060904@mlbassoc.com>
In-Reply-To: <4F8ED502.9060904@mlbassoc.com>
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
X-List-Received-Date: Wed, 18 Apr 2012 15:45:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/18/12 9:51 AM, Gary Thomas wrote:
> On 2012-04-18 08:46, caterwaul wrote:
>>
>>
>>
>>
>> At  2012-04-18  22:06:36,"Gary  Thomas"<gary@mlbassoc.com>   wrote:
>>> On  2012-04-18  07:57,  caterwaul  wrote:
>>>>   At    2012-04-18    19:57:21,"Gary    Thomas"<gary@mlbassoc.com>     wrote:
>>>>> On    2012-04-18    05:29,    caterwaul    wrote:
>>>>>>     Hi,
>>>>>>
>>>>>>     I    wanted    to    add    dhcp(4.2.0)    into    my    image.    And    I    added    "dhcp"    into    IMAGE_INSTALL    of    my    image's    bb    file.    After    I    runing    bitbake,    the    dhcp    package    is    normally    fetched    and    compiled
>>>>>>     and    so    on.    But    during    do_rootfs    bitbake    reported    as    follow:
>>>>>>     Processing    dhcp...
>>>>>>     Unable    to    find    package    dhcp    (dhcp)!
>>>>>>     ERROR:    Function    'do_rootfs'    failed
>>>>>>
>>>>>>     I    note    that    in    /meta/recipes-connectivity/dhcp/dhcp4.inc    the    dhcp    package    is    split    into    4    subpackages(PACKAGES    +=    "dhcp-server    dhcp-client    dhcp-relay    dhcp-omshell").    Now    If    I
>>>>>>     remove    "dhcp"    from    IMAGE_INSTALL    and    add    these    4    subpackages'    name    into    IMAGE_INSTALL    and    run    bitbake    AGAIN,    they    can    be    normally    added    into    my    final    image.
>>>>>>
>>>>>>     I've    tried    to    modify    last    part    of    dhcp4.inc    as    follow:    But    bitbake    still    reported    "Unable    to    find    package    dhcp"
>>>>>>     FILES_${PN}    =    ""
>>>>>>     FILES_${PN}    +=    "${sbindir}/dhcpd    ${sysconfdir}/init.d/dhcp-server    ${sysconfdir}/default/dhcp-server    ${sysconfdir}/dhcp/dhcpd.conf"
>>>>>>     FILES_${PN}    +=    "${sbindir}/dhcrelay    ${sysconfdir}/init.d/dhcp-relay    ${sysconfdir}/default/dhcp-relay"
>>>>>>     FILES_${PN}    +=    "${base_sbindir}/dhclient    ${base_sbindir}/dhclient-script    ${sysconfdir}/dhcp/dhclient.conf"
>>>>>>     FILES_${PN}    +=    "${bindir}/omshell"
>>>>>>     RDEPENDS_${PN}    =    "bash"
>>>>>>
>>>>>>     So    How    should    I    config    bitbake    to    get    my    image    with    dhcp    by    running    bitbake    ONLY    ONCE?
>>>>>
>>>>> There    is    no    "dhcp"    package,    only    dhcp-client,    dhcp-relay,    dhcp-server.
>>>>> Pick    the    functionality    you    need    and    use    the    appropriate    package(s)
>>>>>
>>>>
>>>>
>>>>   Thank  you  very  much.  But  maybe  my  question  is  not  clear.  What  I  mean  is:
>>>>   If  I  pick  dhcp-server  dhcp-client  dhcp-relay  and  dhcp-omshell,  bitbake  will  NOT  start  to  build  and  report  can  NOT  find  these  packages.  On  the  other  hand,  if  I  pick  dhcp,  bitbake
>>>>   will  start  to  build,  but  at  do_rootfs  stage  it  will  report  "Unable  to  find  package  dhcp  (dhcp)!"(at  this  moment  all  dhcp-xxx  packages  has  actually  been  generated  there).  So  I  want
>>>>   to  know  how  to  config  bitbake  to  complete  the  build  and  produce  image  with  whole  or  part  of  dhcp.
>>>
>>> You  are  confusing  packages  with  recipes.    Bitbake  only  knows  how  to
>>> build  recipes  which  in  turn  create  packages.    Most  of  the  time,  the
>>> packages  have  the  same  name  as  the  recipe,  but  not  always.    Sometimes
>>> a  recipe  only  creates  "component"  packages  which,  as  in  the  case  of  dhcp,
>>> do  not  include  a  package  with  exactly  the  same  name  as  the  recipe.
>>>
>>> In  order  to  get  any  of  these  component  packages  built,  one  needs  to
>>> tell  bitbake  to  build  the  recipe  (if  you  are  trying  to  force  it  on
>>> the  command  line).    However,  the  image  needs  to  use  the  package  names,
>>> as  that's  what  gets  installed.
>>>
>>> Maybe  a  bit  confusing,  but  that's  how  it  works.
>>>
>>> n.b.  Please  keep  replies  on  the  mailing  list  so  that  everyone  may  benefit
>>>
>>
>> Thank you again. Could you explain more about how to tell bitbake which recipe I want and which package I want? Should I add both the recipe name(dhcp) and the package names(dhcp-xxx) into IMAGE_INSTALL of the image's recipe? If so, how does bitbake know which name in IMAGE_INSTALL is for recipe and which is for package?
>
> As I said above, you use recipe names when you are running bitbake
> from the command line, e.g.
>     % bitbake dhcp
>     % bitbake core-image-minimal
> As part of the process of building recipes, bitbake learns what _packages_
> are created by each recipe.  Thus, inside recipes, you use package names,
> not recipe names.  So to add dhcp-client to your image, simply add that
> package, not the recipe name.  bitbake will then realize that it needs to
> build the dhcp _recipe_ in order to build the dhcp-client _package_
>
>

This is the difference between a "DEPENDS" and an "RDEPENDS" as well.  DEPENDS 
are recipe names or recipe provides (think source code level).  While RDEPENDS 
are "runtime" depends on binary package name, or some other provide on a binary 
package level.

For an image or task, you would add "dhcp" to the DEPENDS, and dhcp-client to 
your RDEPENDS.  (It happens that an image recipe is a bit unique and RDEPENDS is 
specified as IMAGE_INSTALL...)

--Mark

