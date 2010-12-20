Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E01F4C80039
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 11:29:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKHV5wS002453; Mon, 20 Dec 2010 17:31:06 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Pxr1hKm9qxMx; Mon, 20 Dec 2010 17:31:05 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKHUwJR002450
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 17:31:01 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1D26A61B52@shsmsx502.ccr.corp.intel.com>
References: <cover.1292464057.git.lianhao.lu@intel.com>
	<39f0fc7689c9ddf429a5a2fd4fad7e74c0d98bb6.1292464057.git.lianhao.lu@intel.com>
	<1292514596.26558.4040.camel@rex>
	<C10D3FB0CD45994C8A51FEC1227CE22F1D26A61B52@shsmsx502.ccr.corp.intel.com>
Date: Mon, 20 Dec 2010 17:29:15 +0000
Message-ID: <1292866155.25087.4819.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] meta-environment: Added package of meta-environment-${TARGET_ARCH} for environment files.
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
X-List-Received-Date: Mon, 20 Dec 2010 17:29:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-17 at 10:30 +0800, Lu, Lianhao wrote:
> Hi Richard,
> 
> Richard Purdie wrote on 2010-12-16:
> > Hi Lianhao,
> > 
> > On Thu, 2010-12-16 at 09:40 +0800, Lianhao Lu wrote:
> >> [BUGID #565] Fixing bug #565, added package of
> >> meta-environment-${TARGET_ARCH} for environment files used by
> >> cross-canadian toolchain.
> >> 
> >> Also corrected the situation of empty config site file for target.
> >> 
> >> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
> >> ---
> >>  meta/classes/toolchain-scripts.bbclass         |   32 ++++++++++
> >>  meta/recipes-core/meta/meta-environment.bb     |   75
> >>  ++++++++++++++++++++++++
> >>  meta/recipes-core/tasks/task-cross-canadian.bb |    1 + 3 files
> >>  changed, 108 insertions(+), 0 deletions(-)  create mode
> >> 100644 meta/recipes-core/meta/meta-environment.bb
> > 
> > This recipe looks complex and seems to include a lot of cross-canadian.bbclass.
> > 
> > Would it be possible to inherit that class instead and try and keep
> > the recipe simpler? You can always drop the "meta" inherit. I'm
> > worried about the amount of code duplication here.
> > 
> 
> The reason I didn't inherit the cross-canadian.bbclass in
> meta-environment.bb is that by doing this, there would be a problem in
> the siteinfo.bbclass which is used to generate the autoconf site
> config file for the target. It uses the variables of HOST_ARCH and
> HOST_OS which is replaced by SDK_ARCH and SDK_OS respectively in
> cross-canadian.bbclass. If we inherit the cross-canadian, we need to
> duplicate the code in siteinfo.bbclass to use TARGET_ARCH(OS) instead
> of the HOST_ARCH(OS). So we duplicate either for siteinfo.bbclass or
> for cross-canadian.bbclass. Any comment?

I see your problem. Normally I'd not suggest something like this but
there is a way we can solve the problem. You can put this at the top of
the file before HOST_ARCH and HOST_OS are changed:

TARGET_SITE_CONFIG := "${CONFIG_SITE}"

Then the data you need should be preserved in TARGET_SITE_CONFIG.

Cheers,

Richard


