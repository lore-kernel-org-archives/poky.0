Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3004E004E9
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 10:44:19 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9A1D99AA2D6; Tue, 18 Oct 2011 11:44:18 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0E6A99AA2C7;
	Tue, 18 Oct 2011 11:44:18 -0600 (MDT)
Message-ID: <4E9DBAF2.5020903@mlbassoc.com>
Date: Tue, 18 Oct 2011 11:44:18 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4E9D90A9.6010303@mlbassoc.com> <4E9D957A.8090301@mlbassoc.com>
	<1318958371.2250.19.camel@ted>
	<201110181841.00487.paul.eggleton@linux.intel.com>
In-Reply-To: <201110181841.00487.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: gstreamer update
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
X-List-Received-Date: Tue, 18 Oct 2011 17:44:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-18 11:41, Paul Eggleton wrote:
> On Tuesday 18 October 2011 18:19:21 Richard Purdie wrote:
>> I've just merged Pauls gstreamer update to OE-Core and Poky...
>
> I guess all that's missing then is an update to gst-plugins-good; I didn't
> update the version of that.

You also need to update gst-plugins-base to 0.10.35

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

