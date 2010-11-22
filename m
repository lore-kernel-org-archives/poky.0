Return-Path: <paul.eggleton@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D1874C803A5
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 11:19:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Nov 2010 09:19:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="351825878"
Received: from unknown (HELO helios.localnet) ([10.255.16.138])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2010 09:18:59 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Mon, 22 Nov 2010 17:18:56 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<e159ff2c957d06e1106b7ba221e7b36d3bc06fe9.1290423211.git.paul.eggleton@intel.com>
	<1290445511.1272.17129.camel@rex>
In-Reply-To: <1290445511.1272.17129.camel@rex>
MIME-Version: 1.0
Message-Id: <201011221718.57086.paul.eggleton@intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 3/3] qemu: fix failure to find zlib header files during configure
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
X-List-Received-Date: Mon, 22 Nov 2010 17:19:03 -0000
Content-Type: Text/Plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uZGF5IDIyIE5vdmVtYmVyIDIwMTAgMTc6MDU6MTEgUmljaGFyZCBQdXJkaWUgd3JvdGU6
Cj4gU2hvdWxkIHRoaXMgYmUgJENGTEFHUz8gSSBqdXN0IHdvbmRlciB3aGF0IHRoZSBlZmZlY3Qg
b2YgaW5qZWN0aW5nCj4gQlVJTERfQ0ZMQUdTIHdvdWxkIGJlIGluIHRoZSB0YXJnZXQgY2FzZSAo
cWVtdSB2cy4gcWVtdS1uYXRpdmUpPwo+IAo+IEluIHRoZSBuYXRpdmUgY2FzZSBDRkxBR1MgPT0g
QlVJTERfQ0ZMQUdTLgoKWWVzLCBhY3R1YWxseSB0aGUgaW5pdGlhbCB2ZXJzaW9uIG9mIG15IHBh
dGNoIHVzZWQgQ0ZMQUdTIHdoaWNoIHdvcmtzIGp1c3QgZmluZSAoZm9yIHFlbXUtbmF0aXZlLCBJ
IGhhdmUgdG8gYWRtaXQgdG8gbm90IHRlc3RpbmcgcWVtdSksIHNvIEknbSBoYXBweSB0byBmb3Ig
dGhhdCB0byBiZSBjaGFuZ2VkLgoKQ2hlZXJzLApQYXVsCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBDb3Jw
b3JhdGlvbiAoVUspIExpbWl0ZWQKUmVnaXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5nbGFuZCkKUmVn
aXN0ZXJlZCBPZmZpY2U6IFBpcGVycyBXYXksIFN3aW5kb24gU04zIDFSSgpWQVQgTm86IDg2MCAy
MTczIDQ3CgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZp
ZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGll
bnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBw
cm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2Ug
Y29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K


