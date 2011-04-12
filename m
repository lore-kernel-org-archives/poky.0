Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7149A4C80050
	for <poky@yoctoproject.org>; Mon, 11 Apr 2011 19:03:55 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Q9R5G-0006gC-8N from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 11 Apr 2011 17:03:54 -0700
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 11 Apr 2011 17:00:51 -0700
Received: from [172.30.80.119] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.270.1;
	Mon, 11 Apr 2011 17:03:26 -0700
Message-ID: <4DA396CF.4080804@mentor.com>
Date: Mon, 11 Apr 2011 17:03:27 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTikxXCxeCfqnSC9kKRqVvCgF5=Ju+Q@mail.gmail.com>
In-Reply-To: <BANLkTikxXCxeCfqnSC9kKRqVvCgF5=Ju+Q@mail.gmail.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 12 Apr 2011 00:00:51.0084 (UTC)
	FILETIME=[AF604CC0:01CBF8A4]
Subject: Re: requesting input on specs for a new Poky build server
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
X-List-Received-Date: Tue, 12 Apr 2011 00:03:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 04/11/2011 02:50 PM, Joe Sauer wrote:
> I have the pleasure of spec'ing out a new server for doing Poky builds
> (we are at Green 3.3.1).  As a reference point, my desktop machine is a
> quad-Xeon @ 2.5 GHz with 4GB of RAM and SATA disk.  I can do a full
> "clean" build for our LabQuest (armv5te) in 2 hours.
> 
> Here are some questions I would like to get feedback on regarding a
> build server:
> 
> 1.  Would I get better build time going with more procs (8?) or faster
> procs (3+ GHz)?
> 
> 2.  Are SATA drives OK, or should I go with RAID to get better R/W
> performance?
> 
> 3.  If I have to choose one or the other, should I go with faster procs
> or faster disk I/O?

If you're on somewhat of a budget, the general rule of thumb about going
for last months fastest processor (as opposed to the one just released)
is probably a wise bet.  And you probably want 8-12GB ram if you can fit it.

The only real and not always obvious trick is if you can afford an SSD
(and afford to kill it and replace it every so often) doing your builds
there is a real big win.

-- 
Tom Rini
Mentor Graphics Corporation

