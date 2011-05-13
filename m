Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14FBD4C800AC
	for <poky@yoctoproject.org>; Fri, 13 May 2011 07:25:56 -0500 (CDT)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1QKrRB-00074F-4K; Fri, 13 May 2011 16:25:45 +0400
Message-ID: <4DCD2355.4020902@emcraft.com>
Date: Fri, 13 May 2011 16:25:57 +0400
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110402 Icedove/3.1.9
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <1305157370-3264-1-git-send-email-yanok@emcraft.com>	<201105131117.29367.paul.eggleton@linux.intel.com>	<A8547C1F-B908-46D2-B77D-9CEEB73E8BCD@dominion.thruhere.net>
	<BANLkTikM6CULces4sHCYVcxnaZSczSsmCA@mail.gmail.com>
In-Reply-To: <BANLkTikM6CULces4sHCYVcxnaZSczSsmCA@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFC][PATCH] qt4: add target qmake to qt4-tools package
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
X-List-Received-Date: Fri, 13 May 2011 12:25:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Otavio,

On 13.05.2011 15:46, Otavio Salvador wrote:
> On Fri, May 13, 2011 at 08:05, Koen Kooi <koen@dominion.thruhere.net> wrote:
>> Putting it in qttools would be fine by me
> 
> It would be much better to use qt4-native as being done on OE dev currently.

To use qt4-native for what? We are talking about _target_ version of
qmake which is currently not provided by any package...

Regards, Ilya.


