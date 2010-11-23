Return-Path: <paul.eggleton@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AB014C811D2
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 05:00:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2010 03:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="860519668"
Received: from unknown (HELO helios.localnet) ([10.255.16.147])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2010 03:00:02 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Tue, 23 Nov 2010 11:00:00 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<d037e804e0b097a273b3385cddccef4b3791a8fd.1290423211.git.paul.eggleton@intel.com>
	<1290453775.1272.17276.camel@rex>
In-Reply-To: <1290453775.1272.17276.camel@rex>
MIME-Version: 1.0
Message-Id: <201011231100.00553.paul.eggleton@intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 1/3] openssl: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Tue, 23 Nov 2010 11:00:03 -0000
Content-Type: Text/Plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uZGF5IDIyIE5vdmVtYmVyIDIwMTAgMTk6MjI6NTUgUmljaGFyZCBQdXJkaWUgd3JvdGU6
Cj4gPiAgQ0ZMQUcgPSAiJHtAYmFzZV9jb25kaXRpb25hbCgnU0lURUlORk9fRU5ESUFORVNTJywg
J2xlJywgJy1ETF9FTkRJQU4nLCAnLURCX0VORElBTicsIGQpfSBcCj4gPiAtCS1EVEVSTUlPICR7
RlVMTF9PUFRJTUlaQVRJT059IC1XYWxsIgo+ID4gKwktRFRFUk1JTyAke0ZVTExfT1BUSU1JWkFU
SU9OfSAtV2FsbCAtV2EsLS1ub2V4ZWNzdGFjayIKPiAKPiBTaG91bGQgdGhpcyBmbGFnIGJlIHVz
ZWQgZm9yIGJvdGggdGhlIC1uYXRpdmUgYW5kIHRhcmdldCB2ZXJzaW9ucyBvcgo+IGp1c3QgdGhl
IG5hdGl2ZSBvbmU/CgpXZWxsLCB3ZSdyZSB0cnlpbmcgdG8gc29sdmUgYSBuYXRpdmUtb25seSBp
c3N1ZSBhdCB0aGlzIHBvaW50LCBidXQgaXQncyBjb25jZWl2YWJsZSB0aGF0IHNvbWVvbmUgY291
bGQgd2FudCB0byB1c2UgU0VMaW51eCBvbiB0aGUgdGFyZ2V0LCBpbiB3aGljaCBjYXNlIGFzc3Vt
aW5nIHRoZSBzYW1lIFNFTGludXggcG9saWNpZXMgdGhleSB3b3VsZCBhbHNvIG5lZWQgdGhpcyBm
aXguIEluIGFueSBjYXNlIGxlYXZpbmcgdGhlIGV4ZWNzdGFjayBmbGFnIG9uIGRvZXNuJ3QgcmVh
bGx5IHNlcnZlIGFueSBwdXJwb3NlLCBzaW5jZSBBRkFJQ1QgdGhlIG9wZW5zc2wgbGlicyBkb24n
dCBhY3R1YWxseSBuZWVkIHRvIGV4ZWN1dGUgdGhlIHN0YWNrLCB0aGUgYXNzZW1ibGVyIGp1c3Qg
YXNzdW1lcyB0aGV5IGRvIHNpbmNlIGl0IGhhc24ndCBiZWVuIHRvbGQgb3RoZXJ3aXNlIGFuZCB0
aHVzIG1hcmtzIHRoZSBiaW5hcnkgYXMgc3VjaC4KCklmIHlvdSdkIHByZWZlciB0byBhcHBseSBp
dCBvbmx5IHRvIHRoZSBuYXRpdmUgdmVyc2lvbiBob3dldmVyIEkgd291bGRuJ3Qgb2JqZWN0LgoK
Q2hlZXJzLApQYXVsCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQK
UmVnaXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5nbGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVy
cyBXYXksIFN3aW5kb24gU04zIDFSSgpWQVQgTm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBh
bmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IK
dGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3Ig
ZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJl
IG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFu
ZCBkZWxldGUgYWxsIGNvcGllcy4K


