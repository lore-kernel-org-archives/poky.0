Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94F904C803D6
	for <poky@lists.pokylinux.org>; Mon,  8 Nov 2010 06:23:48 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4D38D16607E1; Mon,  8 Nov 2010 05:23:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D512016607DE;
	Mon,  8 Nov 2010 05:23:46 -0700 (MST)
Message-ID: <4CD7EBD2.5000403@mlbassoc.com>
Date: Mon, 08 Nov 2010 05:23:46 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4CD550D9.30601@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D190FD7B0@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D190FD7B0@shsmsx502.ccr.corp.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Crazy QT packaging
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
X-List-Received-Date: Mon, 08 Nov 2010 12:23:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2010 12:29 AM, Tian, Kevin wrote:
>> From: Gary Thomas
>> Sent: Saturday, November 06, 2010 8:58 PM
>>
>> I just tried to install 'fotowall', a QT application.  Much to
>> my surprise, a whole bunch of QT packages were installed, many
>> of which I have no need and don't understand why they are "required".
>>
>> In particular, the examples and demos, plus QT-designer (I have
>> no development tools installed on my platform).
>>
>> Any ideas why this happens?  how to fix it?
>>
>> Install log is attached.
>>
>
> qt4.inc recommends all packages but some of them should be selectively
> depended by actual recipe. Could you report a bug for it?

Done. Bug #524

> BTW, fotowall doesn't really work yet. There're several hard bugs reported around
> fotowall, e.g. 348, 349, 336, 280, ...)

Thanks for the info - I just picked 'fotowall' as an example Qt application.
Of course, now I have the whole example/demo set loaded... :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

