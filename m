Return-Path: <eric@eukrea.com>
Received: from 63.mail-out.ovh.net (63.mail-out.ovh.net [91.121.185.56])
	by mx1.pokylinux.org (Postfix) with SMTP id A97E74C808B0
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 10:02:12 -0600 (CST)
Received: (qmail 29442 invoked by uid 503); 21 Dec 2010 16:37:47 -0000
Received: from b9.ovh.net (HELO mail239.ha.ovh.net) (213.186.33.59)
	by 63.mail-out.ovh.net with SMTP; 21 Dec 2010 16:37:47 -0000
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 21 Dec 2010 18:02:11 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO ?192.168.1.15?)
	(ebenard%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 21 Dec 2010 18:02:09 +0200
Message-ID: <4D10CF81.9070500@eukrea.com>
Date: Tue, 21 Dec 2010 17:02:09 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc14
	Lightning/1.0b3pre Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D10CB88.4040308@mlbassoc.com>
In-Reply-To: <4D10CB88.4040308@mlbassoc.com>
X-Ovh-Tracer-Id: 14952232238149709173
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-Spam-Check: DONE|U 0.5/N
Cc: poky@lists.pokylinux.org
Subject: Re: Write-protect $DL_DIR
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
X-List-Received-Date: Tue, 21 Dec 2010 16:02:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Gary,

On 21/12/2010 16:45, Gary Thomas wrote:
> In my quest for a well-packaged Poky that I can distribute
> to my customers, I'd like to give them a pre-populated $DL_DIR
> tree (also in response to those customers that have little or
> no net access). This would likely be in /opt/XYZ and practice
> would dictate that it be read-only.
>
> Sadly, this doesn't work. When I try to build Poky with a
> read-only $DL_DIR, it simply hangs on every 'fetch' step.
>
> Note: I could avoid this problem (although I think it's a
> bug even if it should never be experienced) by being able
> to easily provide source mirrors for the packages. So far,
> I've not figured out how to do this; I'd like to add my
> own mirror lists, similar to those in meta/classes/poky.bbclass
> Would this be a way forward? If so, how?
>
maybe something like own-mirrors in OE could be interesting :
http://cgit.openembedded.net/cgit.cgi/openembedded/tree/classes/own-mirrors.bbclass

Eric

