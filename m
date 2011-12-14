Return-Path: <Lauri.Hintsala@bluegiga.com>
Received: from darkblue.bluegiga.com (bluegiga.fi [194.100.31.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E72E00305
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 22:47:48 -0800 (PST)
Received: from [10.1.1.28] ([10.1.1.28]) by darkblue.bluegiga.com with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 14 Dec 2011 08:47:46 +0200
Message-ID: <4EE84690.8090601@bluegiga.com>
Date: Wed, 14 Dec 2011 08:47:44 +0200
From: Lauri Hintsala <lauri.hintsala@bluegiga.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EE01E6F.8090700@windriver.com>
In-Reply-To: <4EE01E6F.8090700@windriver.com>
X-OriginalArrivalTime: 14 Dec 2011 06:47:46.0928 (UTC)
	FILETIME=[49F8EF00:01CCBA2C]
Subject: Re: Where is bridge-utils in yocto recipes ?
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
X-List-Received-Date: Wed, 14 Dec 2011 06:47:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

If you are using busybox I would prefer to try brctl applet of busybox. 
Just enable "CONFIG_BRCTL=y" from config and recompile busybox.

BR,
Lauri Hintsala


On 12/08/2011 04:18 AM, Zumeng Chen wrote:
> Hi All,
>
> I want to use bridge control brctl, but bit-bake bridge-utils
> returns failure, name changed? or not existence?
>
> Any comments are welcome?
>
> Thanks,
> Zumeng
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

