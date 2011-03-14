Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8972A4C800BE
	for <poky@lists.pokylinux.org>; Mon, 14 Mar 2011 06:45:09 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1308B16602D5; Mon, 14 Mar 2011 05:45:09 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 406F01660265;
	Mon, 14 Mar 2011 05:45:08 -0600 (MDT)
Message-ID: <4D7DFFC4.8070501@mlbassoc.com>
Date: Mon, 14 Mar 2011 05:45:08 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Zhai, Edwin" <edwin.zhai@intel.com>
References: <4D7A5C3B.6070709@mlbassoc.com> <4D7D7997.8050100@intel.com>
In-Reply-To: <4D7D7997.8050100@intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: icon registration
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
X-List-Received-Date: Mon, 14 Mar 2011 11:45:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/13/2011 08:12 PM, Zhai, Edwin wrote:
> Gary,
> We have explicitly set the default icon theme as "sato" to fix a bug. You can change /etc/gtk/gtkrc.. for a try.

Wouldn't that be /etc/gtk-2.0/gtkrc?

I could not find a way to use this file to allow both sets of icon (themes, actually).
Do you know how?  I don't want to necessarily replace sato, just allow the use of the
standard gnome elements.

n.b. there seems to be a bug in the GTK libraries that make them fail if the default
icons are not available.  It tries to render GTK_STOCK_MISSING_IMAGE for the missing
icons and this fails if there is no such icon available in the set (e.g. in sato).
On ARM at least, this is a fatal segmentation error.  Should I report this as a bug
in Poky?

> Gary Thomas wrote:
>>
>> I built & installed gnome-icon-theme on top of my sato(-like) image,
>> but the new icons did not show up. I've built a GTK-webcore application
>> (midori browser) that wants to use some GNOME icons that it can't find:
>> Gtk-WARNING **: Error loading theme icon 'stock_new-tab' for stock: Icon 'stock_new-tab' not present in te
>> For some GTK+ applications, this seems to be fatal :-(
>>
>> Does anyone know how new icon sets might be registered? Shouldn't
>> this happen automatically when you install a theme?
>>
>> n.b. I simply copied the /usr/share/icons/gnome/ tree over /usr/share/icons/Sato
>> and the application runs perfectly. I'd rather not have to resort this.
>>
>> Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

