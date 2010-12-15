Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59AAA4C80B71
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 07:11:26 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBFDCZPx003066; Wed, 15 Dec 2010 13:12:36 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ZdhVk7+iEMev; Wed, 15 Dec 2010 13:12:35 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBFDCRlw003063
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 15 Dec 2010 13:12:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
Date: Wed, 15 Dec 2010 13:11:03 +0000
Message-ID: <1292418663.26558.2234.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: question about task override
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
X-List-Received-Date: Wed, 15 Dec 2010 13:11:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-15 at 03:24 -0800, Tian, Kevin wrote:
> I'm not sure whether "task override" is the right term here. Let me describe it:
> 
> It's possible to have multiple places define same task, e.g:
> 
> a.bbclass:
> 	do_install () {
>      ...
>      }
> 
> b.bbclass:
>      b_do_install() {
>      ...
>      }
> 
> c.bb:
> 	inherit a b
>      
> I know that if c.bb defines its own do_install, that would be the one being used which
> simply overrides a.bbclass and b.bbclass.
> 
> However I don't know if c.bb doesn't define its own do_install, which one from a.bbclass
> or b.bbclass will take effect here? In inherit order?

As an example you will see base.bbclass defines base_do_install and then
later there is EXPORT_FUNCTIONS do_install.

What this means is that if there is no do_install defined,
base_do_install also becomes do_install.

The reason for this is that it means a recipe can define do_install and
yet still call base_do_install.

So in your above example, you'd really want c.bb to be able to do:

do_install () {
        a_do_install
        b_do_install
}

> A second question is how and where b_do_install is converted into a plain do_install. I tried
> to search the source but failed to locate the exact lines. For example, patch_do_patch is
> one mysterious function which I don't how it becomes do_patch.

Its done with EXPORT_FUNCTIONS.

> Then comes the third question. How to reference a specific version of do_install from 
> another place? I want to add one exclusive variable dependency for do_deploy in 
> kernel.bbclass, however neither of below works:
> 
> (meta/conf/distro/poky.conf)
> do_deploy[vardepsexclude] = "DATE TIME"
> kernel_do_deploy[vardepsexclude] = "DATE TIME"
> 
> There's one example in poky.conf:
> 
> patch_do_patch[vardepsexclude] = "DATE SRCDATE"
> 
> which works. Does that mean I have to change do_deploy in kernel.bbclass to
> kernel_do_deploy which is unique in global namespace and then can be referenced
> from other places?

You should probably add

do_deploy[vardepsexclude] = "DATE TIME"

alongside the definition of the function in kernel.bbclass. If that
doesn't work we need to work out why as it should.

kernel.bbclass could change to be kernel_do_deploy and add an
EXPORT_FUNCTION, we've just not had the need for a do_deploy() which
called kernel_do_deploy() before.

Cheers,

Richard


