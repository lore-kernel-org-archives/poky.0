Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F29E013A5
	for <poky@yoctoproject.org>; Mon, 19 Mar 2012 23:27:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2012 23:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141688876"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2012 23:27:43 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F67E970.2020708@mlbassoc.com>
References: <4F67E970.2020708@mlbassoc.com>
Date: Tue, 20 Mar 2012 14:25:39 +0800
Message-ID: <1332224739.1848.26.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't run HOB
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
X-List-Received-Date: Tue, 20 Mar 2012 06:27:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-19 at 20:20 -0600, Gary Thomas wrote:
> When I try HOB on my tree, it parses the metadata to around 57%
> and then brings up what I guess is a warning (sadly, it only shows
> an empty dialogue with an "OK" button).  This seems to happen because
> I have meta-ti in my bblayers.conf.  I also have this statement in
> my local.conf:
>    # Ignore troublesome TI recipes
>    BBMASK = ".*/meta-ti/recipes-misc/"
> 
> Maybe HOB is not honouring the BBMASK?

Variables are still handled in bitbake server side, Hob only acts as a
bridge between user and bitbake server.

The phenomenon is strange since the code piece will detect if the error
msg is None or not. If it is None, it will not pop up the error dialog.

================================================================
    def handler_command_failed_cb(self, handler, msg):
        if msg:               
            lbl = "<b>Error</b>\n"         
            lbl = lbl + "%s\n\n" % msg     
            dialog = CrumbsMessageDialog(self, lbl,
gtk.STOCK_DIALOG_WARNING)
            dialog.add_button(gtk.STOCK_OK, gtk.RESPONSE_OK)
            response = dialog.run()        
            dialog.destroy()
================================================================

What's does it do if you click the "OK" button?

Thanks,
Dongxiao

> 



