Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097E2E013A6
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 03:03:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7D1ACF81244; Tue, 20 Mar 2012 04:03:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 55ADCF81238;
	Tue, 20 Mar 2012 04:03:25 -0600 (MDT)
Message-ID: <4F6855ED.2020904@mlbassoc.com>
Date: Tue, 20 Mar 2012 04:03:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <4F67E970.2020708@mlbassoc.com>
	<1332224739.1848.26.camel@dongxiao-osel>
In-Reply-To: <1332224739.1848.26.camel@dongxiao-osel>
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
X-List-Received-Date: Tue, 20 Mar 2012 10:03:29 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-20 00:25, Xu, Dongxiao wrote:
> On Mon, 2012-03-19 at 20:20 -0600, Gary Thomas wrote:
>> When I try HOB on my tree, it parses the metadata to around 57%
>> and then brings up what I guess is a warning (sadly, it only shows
>> an empty dialogue with an "OK" button).  This seems to happen because
>> I have meta-ti in my bblayers.conf.  I also have this statement in
>> my local.conf:
>>     # Ignore troublesome TI recipes
>>     BBMASK = ".*/meta-ti/recipes-misc/"
>>
>> Maybe HOB is not honouring the BBMASK?
>
> Variables are still handled in bitbake server side, Hob only acts as a
> bridge between user and bitbake server.
>
> The phenomenon is strange since the code piece will detect if the error
> msg is None or not. If it is None, it will not pop up the error dialog.
>
> ================================================================
>      def handler_command_failed_cb(self, handler, msg):
>          if msg:
>              lbl = "<b>Error</b>\n"
>              lbl = lbl + "%s\n\n" % msg
>              dialog = CrumbsMessageDialog(self, lbl,
> gtk.STOCK_DIALOG_WARNING)
>              dialog.add_button(gtk.STOCK_OK, gtk.RESPONSE_OK)
>              response = dialog.run()
>              dialog.destroy()
> ================================================================
>
> What's does it do if you click the "OK" button?

It seems to stop scanning recipes immediately.  There is no text
along with the warning dialogue.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

