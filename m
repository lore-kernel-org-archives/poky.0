Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 012DD4C8085F;
	Mon, 10 Jan 2011 20:02:09 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jan 2011 18:02:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,304,1291622400"; d="scan'208";a="695471417"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2011 18:02:08 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 11 Jan 2011 10:01:32 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 11 Jan 2011 10:01:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 11 Jan 2011 10:01:32 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Bruce Ashfield' <bruce.ashfield@windriver.com>, "rpurdie@linux.intel.com"
	<rpurdie@linux.intel.com>
Date: Tue, 11 Jan 2011 10:01:30 +0800
Thread-Topic: [poky] [PATCH 4/5] kern-tools: create generic variables for
	platform/board/kernel
Thread-Index: Acuw7BYr4KXe9/T6QeS0G6Y7PkuhBwAQupYA
Message-ID: <1865303E0DED764181A9D882DEF65FB685AFA1B319@shsmsx502.ccr.corp.intel.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
	<38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 4/5] kern-tools: create generic variables for	platform/board/kernel
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
X-List-Received-Date: Tue, 11 Jan 2011 02:02:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

aG1tbSwgbG9va3MgdGhpcyBjb21taXQgd2FzIG5vdCB0ZXN0ZWQ/IA0KDQpXaXRoIHBva3kuZ2l0
J3MgbGF0ZXN0IDRiMDU1ZWQsICJiaXRiYWtlICBrZXJuLXRvb2xzLW5hdGl2ZSAtYyBmZXRjaCIg
ZmFpbHMgYmVjYXVzZSBpbiBodHRwOi8vZ2l0LnBva3lsaW51eC5vcmcvY2dpdC9jZ2l0LmNnaS93
ci1rZXJuZWwtdG9vbHMvLCB0aGUgbGF0ZXN0IGNvbW1pdCBpcyBzdGlsbCBhNDk0ZGRhZjFjOTE1
MWFmOGFmODA1MGU4NDI3Yzk5NTg0NDBlYzRjLg0KDQpUaGFua3MsDQotLSBEZXh1YW4NCg0KLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHBva3ktYm91bmNlc0B5b2N0b3Byb2plY3Qu
b3JnIFttYWlsdG86cG9reS1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBC
cnVjZSBBc2hmaWVsZA0KU2VudDogMjAxMcTqMdTCMTHI1SAxOjMxDQpUbzogcnB1cmRpZUBsaW51
eC5pbnRlbC5jb20NCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBwb2t5QHlvY3RvcHJvamVj
dC5vcmc7IFdvbGQsIFNhdWwNClN1YmplY3Q6IFtwb2t5XSBbUEFUQ0ggNC81XSBrZXJuLXRvb2xz
OiBjcmVhdGUgZ2VuZXJpYyB2YXJpYWJsZXMgZm9yIHBsYXRmb3JtL2JvYXJkL2tlcm5lbA0KDQpV
cGRhdGUgdGhlIFNSQ1JFViB0byBwaWNrdXAgY2hhbmdlcyB0byB1cGRhdGUgdGhlIHVzZSBvZg0K
V1JTXyogdG8gYmUgSyogdG8gcHJvdmlkZSBtb3JlIGdlbmVyaWMgbmFtZXMgZm9yIHRoZQ0KcGxh
dGZvcm0vYm9hcmQva2VybmVsIGNvbmZpZ3VyYXRpb24gb3B0aW9ucy4NCg0KU2lnbmVkLW9mZi1i
eTogQnJ1Y2UgQXNoZmllbGQgPGJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb20+DQotLS0NCiAu
Li4vY29uZi9kaXN0cm8vaW5jbHVkZS9wb2t5LWRlZmF1bHQtcmV2aXNpb25zLmluYyB8ICAgIDQg
KystLQ0KIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
DQpkaWZmIC0tZ2l0IGEvbWV0YS9jb25mL2Rpc3Ryby9pbmNsdWRlL3Bva3ktZGVmYXVsdC1yZXZp
c2lvbnMuaW5jIGIvbWV0YS9jb25mL2Rpc3Ryby9pbmNsdWRlL3Bva3ktZGVmYXVsdC1yZXZpc2lv
bnMuaW5jDQppbmRleCBmYzIwY2U0Li42NTY4MWNjIDEwMDY0NA0KLS0tIGEvbWV0YS9jb25mL2Rp
c3Ryby9pbmNsdWRlL3Bva3ktZGVmYXVsdC1yZXZpc2lvbnMuaW5jDQorKysgYi9tZXRhL2NvbmYv
ZGlzdHJvL2luY2x1ZGUvcG9reS1kZWZhdWx0LXJldmlzaW9ucy5pbmMNCkBAIC01Nyw3ICs1Nyw3
IEBAIFNSQ1JFVl9wbi1neXBzeSA/Pz0gIjE0NyINCiBTUkNSRVZfcG4taW5wdXRwcm90byA/Pz0g
IjcyMDMwMzY1MjJiYTlkNGIyMjRkMjgyZDZhZmMyZDBiOTQ3NzExZWUiDQogU1JDUkVWX3BuLWlu
cHV0cHJvdG8tbmF0aXZlID8/PSAiNzIwMzAzNjUyMmJhOWQ0YjIyNGQyODJkNmFmYzJkMGI5NDc3
MTFlZSINCiBTUkNSRVZfcG4taW5wdXRwcm90by1uYXRpdmVzZGsgPz89ICI3MjAzMDM2NTIyYmE5
ZDRiMjI0ZDI4MmQ2YWZjMmQwYjk0NzcxMWVlIg0KLVNSQ1JFVl9wbi1rZXJuLXRvb2xzLW5hdGl2
ZSA/Pz0gImE0OTRkZGFmMWM5MTUxYWY4YWY4MDUwZTg0MjdjOTk1ODQ0MGVjNGMiDQorU1JDUkVW
X3BuLWtlcm4tdG9vbHMtbmF0aXZlID8/PSAiZjU1M2FmMDQ0NjE1YmE3NWMyYjRiN2VmMWYzODJl
NmY3NTA4NzIxMyINCiBTUkNSRVZfcG4tbGliZHJtID8/PSAiM2YzYzViZTZmOTA4MjcyMTk5Y2Nm
NTNmMTA4YjExMjRiZmUwYTAwZSINCiBTUkNSRVZfcG4tbGliZmFrZWtleSA/Pz0gIjIwMzEiDQog
U1JDUkVWX3BuLWxpYmdkYnVzID8/PSAiYWVhYjZlM2MwMTg1YjI3MWNhMzQzYjQzOTQ3MDQ5MWI5
OWNjNTg3ZiINCkBAIC0xMDUsNyArMTA1LDcgQEAgU1JDUkVWX21hY2hpbmVfcG4tbGludXgteW9j
dG9fYXRvbS1wYyA9ICI2NjM1ODY0NzkwYWMyM2RiODU2MTQ3ZmNiYzRlOGViYmZkMzBhMGINCiBT
UkNSRVZfbWFjaGluZV9wbi1saW51eC15b2N0b19yb3V0ZXJzdGF0aW9ucHJvID0gImNjMWQ4MDIy
Mjg4MDNlMGViZjI3ZjNkMzc3MmRlMzYyMDE1OWQxOTUiDQogU1JDUkVWX21hY2hpbmVfcG4tbGlu
dXgteW9jdG9fbXBjODMxNWUtcmRiID0gImJlMjY2NzZiZjY3YjBjNGI1ZjM2YjU3ZmU5ZTQ2Zjhi
ZmQyYTY3YzkiDQogU1JDUkVWX21hY2hpbmVfcG4tbGludXgteW9jdG9fYmVhZ2xlYm9hcmQgPSAi
NjYzNTg2NDc5MGFjMjNkYjg1NjE0N2ZjYmM0ZThlYmJmZDMwYTBiYSINCi1TUkNSRVZfbWV0YV9w
bi1saW51eC15b2N0byA/PSAiNjUzZmEyMzM4YzQ2YTNmOTQwZWFkZjQyZTFmOTUwMTllZjQzZjY0
YSINCitTUkNSRVZfbWV0YV9wbi1saW51eC15b2N0byA/PSAiNzEwMjA5N2EyNWM3NjU4ZTBmNGQ0
ZGM3MTg0NGUwZmY2YzQ0NmIyNSINCiBTUkNSRVZfcG4tbGludXgtbGliYy1oZWFkZXJzLXlvY3Rv
ID8/PSAiNjYzNTg2NDc5MGFjMjNkYjg1NjE0N2ZjYmM0ZThlYmJmZDMwYTBiYSINCiBTUkNSRVZf
cG4tbWF0Y2hib3gtY29uZmlnLWd0ayA/Pz0gIjIwODEiDQogU1JDUkVWX3BuLW1hdGNoYm94LWRl
c2t0b3Atc2F0byA/Pz0gIjc2Ig0KLS0gDQoxLjcuMC40DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQpwb2t5IG1haWxpbmcgbGlzdA0KcG9reUB5b2N0
b3Byb2plY3Qub3JnDQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8vcG9r
eQ0K

