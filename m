Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AE154C804BD
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 17:52:11 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1QYnKE-0005fO-Ho from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 20 Jun 2011 15:52:10 -0700
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 20 Jun 2011 15:46:49 -0700
Received: from [172.30.80.125] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.289.1;
	Mon, 20 Jun 2011 15:51:58 -0700
Message-ID: <4DFFCEFA.2030000@mentor.com>
Date: Mon, 20 Jun 2011 15:51:38 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DFFAB8C.30905@linux.intel.com>
In-Reply-To: <4DFFAB8C.30905@linux.intel.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 20 Jun 2011 22:46:49.0329 (UTC)
	FILETIME=[F0CCC610:01CC2F9B]
Subject: Re: eggdbus build failure in master
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
X-List-Received-Date: Mon, 20 Jun 2011 22:52:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 06/20/2011 01:20 PM, Darren Hart wrote:
> I'm seeing a consistent eggdbus build failure that seems to be related
> to the perl-native relocation. I've cleanall'd autoconf and automake,
> native and target versions. The failure persists.
> 
> Anyone have any ideas on how to get this building? I'll start a clean
> build in another directory for now.

It's a glib problem, you need to switch glib-mkenums to using
/usr/bin/env perl (you're building in too deep a path for #! to work
with the full path to perl-native).

-- 
Tom Rini
Mentor Graphics Corporation

