Return-Path: <SRS0=PGs/tu=CF=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout10.eigbox.net (bosmailout10.eigbox.net [66.96.184.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8658E004D2
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 09:57:11 -0700 (PDT)
Received: from bosmailscan13.eigbox.net ([10.20.15.13])
	by bosmailout10.eigbox.net with esmtp (Exim) id 1SDf8Q-0002so-QZ
	for poky@yoctoproject.org; Fri, 30 Mar 2012 12:57:10 -0400
Received: from bosimpout01.eigbox.net ([10.20.55.1])
	by bosmailscan13.eigbox.net with esmtp (Exim) id 1SDf8Q-0007a7-DV
	for poky@yoctoproject.org; Fri, 30 Mar 2012 12:57:10 -0400
Received: from bosauthsmtp10.eigbox.net ([10.20.18.10])
	by bosimpout01.eigbox.net with NO UCE
	id rsxA1i0070D2CUy01sxAEg; Fri, 30 Mar 2012 12:57:10 -0400
X-Authority-Analysis: v=2.0 cv=eq1oOPVX c=1 sm=1
	a=ezw8LHFQp/lSHt//sRtX8Q==:17 a=mn2ndCrYJZwA:10 a=Na1N3YiFAQsA:10
	a=k55E2sBG-7gA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=jV2zTg0wAAAA:8
	a=bJmF3G1P5emTBPe69o8A:9 a=XcO2ypPKjckwy8PHyBIA:7 a=wPNLvfGTeEIA:10
	a=2JmKTArPWNwA:10 a=Kpo39fPXdbgqDwiI3/AEUA==:117
X-EN-OrigOutIP: 10.20.18.10
X-EN-IMPSID: rsxA1i0070D2CUy01sxAEg
Received: from pool-108-25-202-179.atclnj.east.verizon.net ([108.25.202.179]
	helo=[192.168.1.3]) by bosauthsmtp10.eigbox.net with esmtpa (Exim)
	id 1SDf8Q-0006xd-9r
	for poky@yoctoproject.org; Fri, 30 Mar 2012 12:57:10 -0400
Message-ID: <4F75E5E3.9050407@mindchasers.com>
Date: Fri, 30 Mar 2012 12:57:07 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120310 Thunderbird/11.0
MIME-Version: 1.0
To: poky@yoctoproject.org
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.202.179
X-EN-OrigHost: pool-108-25-202-179.atclnj.east.verizon.net
Subject: [PATCH] README.hardware for mpc8315erdb incorrectly specified a null modem serial cable
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
X-List-Received-Date: Fri, 30 Mar 2012 16:57:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I noticed this while beta testing 1.2. but patch is against master 
(latest commit: bcd4d14425cadc5bd6296f59f14733e8c39c49dd).

Instructions specified a null modem.  This isn't the case.  A straight 
serial cable is required.  I verified it with my own setup and 
Freescale's user manual.


Signed-off-by: Robert Cochran<yocto@mindchasers.com>

---
   README.hardware |    3 +--
  1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/README.hardware b/README.hardware
index f72da94..1e7df76 100644
--- a/README.hardware
+++ b/README.hardware
@@ -241,8 +241,7 @@ Setup instructions
  You will need the following:
  * NFS root setup on your workstation
  * TFTP server installed on your workstation
-* Null modem cable connected from your workstation to the first serial port
-  on the board
+* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your 
PC to UART1
  * Ethernet connected to the first ethernet port on the board

  --- Preparation ---
-- 
1.7.5.4

