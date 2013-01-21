Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8BCAE00719
	for <poky@yoctoproject.org>; Mon, 21 Jan 2013 03:46:47 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C4897F8121A; Mon, 21 Jan 2013 04:46:46 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1975BF811EB;
	Mon, 21 Jan 2013 04:46:46 -0700 (MST)
Message-ID: <50FD2AB4.7040105@mlbassoc.com>
Date: Mon, 21 Jan 2013 04:47:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Jesse Zhang <sen.zhang@windriver.com>
References: <50F6D326.9000500@mlbassoc.com> <50FCE77D.3020008@windriver.com>
In-Reply-To: <50FCE77D.3020008@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Using gnome icons
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
X-List-Received-Date: Mon, 21 Jan 2013 11:46:47 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-01-21 00:00, Jesse Zhang wrote:
> On 01/17/2013 12:19 AM, Gary Thomas wrote:
>> I have an image based on core-image-sato.  How can I enable this
>> to use the full gnome icon set?  e.g. I run an application
>> which uses GTK+ directly which has a button using GTK_STOCK_MEDIA_RECORD
>> On my Sato based device, this button just says 'Record' whereas on
>> my desktop it shows with a nice red record icon.
>
> Gtk has a config option for that (icons beside button text). You might
> need to turn it on.

It seems to be much more complicated than this.  If I run my application
using the native X server, i.e. on my embedded LCD, I get on the simple
"record" text in the button.  However, if I run the same application on
the embedded unit, but the display is remote (e.g. on my desktop using
ssh -X), I get a button with icons.

Something very tricky is afoot here...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

