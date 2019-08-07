Return-Path: <glep-poky@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3707E00D8A; Tue,  6 Aug 2019 21:00:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,FORGED_MUA_MOZILLA,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Aug 2019 21:00:07 PDT
Received: from blaine.gmane.org (195-159-176-226.customer.powertech.no
	[195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85AD3E00C22
	for <poky@yoctoproject.org>; Tue,  6 Aug 2019 21:00:07 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.89)
	(envelope-from <glep-poky@m.gmane.org>) id 1hvCsp-000mhQ-HH
	for poky@yoctoproject.org; Wed, 07 Aug 2019 05:45:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@yoctoproject.org
From: Tim Blechmann <tim@klingt.org>
Date: Wed, 7 Aug 2019 11:28:32 +0800
Message-ID: <qidgh2$3lce$1@blaine.gmane.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
X-Mozilla-News-Host: news://news.gmane.org:119
Openpgp: preference=signencrypt
Autocrypt: addr=tim@klingt.org; keydata=
	mQINBFSlWjIBEACh3ciwidIuEKR3CglQcgPmXzkG81av3gVqkDPBNowzQCGMkWUHYY25MskT
	kDokJGP+T8kZJn/I7ABFyJd+pGMtZ0ywp9zaGyEQaGZ9g9cupXhg5KLr/OnfGMLRe011GT/0
	T2I9GQGYswz2mGa5TqJ57fkWFm8LpQHmb7A0brpzmpQNDUSMZ2ZDZvzh9qwAINAMBCU8xQI2
	3DlUyNF4SARsDCg8TaB37iPrNhxCwl3Ck+vl9oGwJQmGzCaMaENfepVtALUvTKHjiewqUzM6
	5BdRD5rN10XsX97+Qsu9tKdFHjRjelLhWMUKEC4rMEKyA0F5GfZck6AdejCeUE7Mkrqsxqst
	IMc6U1WoLOsuuIUYytqn8eyyvsxqaVLA9mqIXR1seVJuGRkveAf35qMO/irhx3AgKz9kWXuu
	xm4nvPGkEwngj3QNiBCj/L1BMg2AUXUiwJKuYquYzb48v7ICTpa6TCL2F6Qgetu8WoZeVEUg
	usZiOZWTnjAlcUSbw4i7UtHLn2fcPSPX0EmnBK3GtZ3HbG9mcJmTzKwInybLc274f98F7BRQ
	HFIuS+614j6R96dFx62O5+SMxaohR94sBxiZQ7ucBgq9VB1RWAwJRK8Vw0yP62KES2YERyev
	FQOEX+rPu2NKD/otuG44FZtLyzQfSwBm0Hk23XYJ07my0yCKXwARAQABtB5UaW0gQmxlY2ht
	YW5uIDx0aW1Aa2xpbmd0Lm9yZz6JAj0EEwEKACcFAlSlWjICGyMFCQlmAYAFCwkIBwMFFQoJ
	CAsFFgIDAQACHgECF4AACgkQAiS9aKibTsPrZw/9FYG/OgMgOK17OTknute+vgVpuXOOIMgW
	I7gRfDk0Xco/w723wm40m6fQMN+OBBzpM2Y2oXPo0N5sQWDWglQAEw86kDoxxYhObiSCf8d4
	BeWC46i2bGORi+IybTRo1B/tmr8rduT1tokDlILPptqhm9Um8yrmG/oEhQyPpDuohGgw/Gbe
	lP95Dv9oeza58VV/8OOgrdARlLj30d/mHfReqEFNjuvssYetYgd7vp8RliqKU95mE2e8xV8L
	7h6ntC56NFUrUNpB9usK3QDhPgfd3yj3+B6MAMAtSwwmQdwxhuJY+Z3iR0fc5NYS4Q6VOjx9
	aJ/UMum/hIx7ituIIySE4kCcgvV52Iu1QyJBLiDsHE75FJKhHXMj9yDeacf4sVlvRNo44hBa
	je+2PUHni/yXtrSAfZn9QuEdzZovTAzxFa4+5AsFz0fA5MxkhVGUF4PD4/XIU38Caik1Qypr
	kQZgTkrRY3m39lNGNmDnlUjU8C8zMpLDhNkseqLH26kbZ4IN8F45egzFzBJvLT+r3h4wwmxj
	N0AHHQTLQjGYrTocMNpSSidoXUdgm/ScF8tRdzLbuTZdKHHZVNMlbsOK1SJnxjNgWclgeGF3
	wPjffW2ECVPSK1J6mbX2ax+qUT9oDgbc94KpKgauol/brS/6XvNC2YKrT0WdtURV+ceKYoCN
	BgG5Ag0EVKVaMgEQAK9hVwISDDt+UKeJsCHotckFVz/ULpbkxx9LXf2KoBNLtO0d3p9uDvmk
	nIW2S8A0v7hZdyYyZcFSr4PCXYHdlHqarDGQF5x5ir/kGIS+FKmvOvOBg+nRjvu1K+yArOnA
	lQDvizCoDy/vOoumMDTERw+B6LCtjQuZg2ovCrBqF8LHqPR63HpzxaEfT6ynhqriGzxd6iRQ
	qUbhYqZlikdItS0OOkNunEnYWq8w5WPXWfMthGaY5O0bdTGJHh5VZ9P/IV0z3bJLvkLpxMk9
	GEpzYsL9zhkyzhgIi9KGTdEY3E0ZsHg+lHjExDf3RGpqdssfWc6UzXF7jMhuNl8mXFnXwJm+
	esGwog1kfn7v0zXMJb0NhbrSRAwguCox/fO3p5pJmlsiuAuGQEBs2cq/wQMibvRjICwJjxne
	VpuVJUCvizgLn9n/oQ/gICbh4Zs5aZdBTkSPWa4D3mcUVEbGB+vJ6oMekTsZuRC2yohk90mO
	qh6jofHIZaPzlc5O1U+ft9X+KgMYIo0oWcpRkO2be9fJ+aJwf7ZsqnXSz8tLthqyt1wSxk/K
	Hc3L1Ekil4no6af5HQm8A1v5EfsTBRxi2740qfe65YZbQqX4HdJR8m9xwtbrVjKNjWhtOObG
	gmBCuWGzi0u2v5y4BHiKGq5dSiEw2Mlyg80nS9fkpqtgjpJ+XaybABEBAAGJAiUEGAEKAA8F
	AlSlWjICGwwFCQlmAYAACgkQAiS9aKibTsNwjQ//RoZuCM7AewS7pxdhUFQ7/uchbn0XBi1j
	I0Yf2ypF2NIxSs2KvbkSQr8OJoHclABMF54dnm5CBK28VbWB5aD6uHbXvVBsg1RMevk1TrH8
	hDTKfL93Tflfobwmm86GAb+3GVnCIcZ3Tlm0fr0O2az99+cK+QtvFJ85aJbdl3E81bpHYpUl
	RG7K/OrXlO8pgdUmrgVF3hrsP13dWt0vCFe/x6WclikyrWwy02ZQYHwlOqhi2IZnE0fcfh12
	+ddbOpa4mlKDHnvDgsBbKNv1wB9oINPwzmPdJy0mIuEbuNcAPpQTYXYcNE632NnoFnf8th+q
	pHSp1tl7GCix5GM2q1+TrH+3QjCLOso+4T04Fg8Tg5SIGRGwqZGKv+eGNcsP9cmq0QbVYHR/
	jhg6LVbdumIxUEW+HVokXWfWyNCZR9Mro3Bv7l19gYP6yYwmYhPVIObIasgG1ACQqcEhOpct
	MAiCm51TsN49w1+y/0dAu/oIzhLfpLs7j6V6zFDU+avYbIE51JdDnl2hQhF1fj7cRW9weFHt
	2WZe099acT/wxx9FYQWv+82hXu8thNtkpDC7suuCxFAY8RRmIgmytCSnwSTxntVbkTdx446h
	rdBWG5GqnI1/Q4RaEAq6nNeahh9R3b/JMH9NQMAoXCBBeTtNt6A+374qz/eraosy83OPotAl
	EfM=
Subject: deb: custom compression
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Aug 2019 04:00:08 -0000
X-Groupsio-MsgNum: 11753
Content-Type: multipart/mixed; boundary="------------548E4EE4E1B243024C13C558"
Content-Language: en-US

--------------548E4EE4E1B243024C13C558
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

hi!

poky compresses deb packages with the default flags, which these days
boils down to using xz compression.
trying to cut down turnaround times for local builds, i tried to modify
the `package_deb` class to be able to force a low gzip compression via a
`DPKG_FAST` parameter (patch attached).

could this patch be accepted upstream?

thanks a lot,
tim

--------------548E4EE4E1B243024C13C558
Content-Type: text/plain; charset=UTF-8; x-mac-type="0"; x-mac-creator="0";
 name="0001-package_deb-add-DPKG_FAST-flag.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0001-package_deb-add-DPKG_FAST-flag.patch"

RnJvbSBjMzZlYWQ3YzRjYzliMGNiODFiMjc0ZGRjZDI4OGYwZDEzYzkwNjYyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBUaW0gQmxlY2htYW5uIDx0aW1Aa2xpbmd0Lm9yZz4KRGF0ZTog
RnJpLCAyIEF1ZyAyMDE5IDA2OjA1OjQ3ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gcGFja2FnZV9k
ZWI6IGFkZCBEUEtHX0ZBU1QgZmxhZwoKYnkgZGVmYXVsdCBkcGtnLWRlYiBjb21wcmVzc2VzIGRl
YmlhbiBwYWNrYWdlcyB3aXRoIHh6LiB4eiBnaXZlcyBncmVhdApjb21wcmVzc2lvbiByYXRpb3Ms
IGF0IHRoZSBjb3N0IG9mIGNvbXByZXNzaW9uIHNwZWVkLgoKd2UgdGhlcmVmb3JlIGludHJvZHVj
ZSBhIERQS0dfRkFTVCBmbGFnLCB3aGljaCBjb21wcmVzc2VzIHdpdGggZ3ppcCwgd2hpY2gKc2hv
dWxkIGJlIGFuIG9yZGVyIG9mIG1hZ25pdHVkZSBmYXN0ZXIgdGhhbiB4eiBhdCB0aGUgY29zdCBv
ZiBhbG1vc3QKZG91YmxpbmcgcGFja2FnZSBzaXplcy4KCm51bWJlcnM6Cmh0dHBzOi8vd3d3LnJv
b3R1c2Vycy5jb20vZ3ppcC12cy1iemlwMi12cy14ei1wZXJmb3JtYW5jZS1jb21wYXJpc29uLwoK
U2lnbmVkLW9mZi1ieTogVGltIEJsZWNobWFubiA8dGltQGtsaW5ndC5vcmc+Ci0tLQogbWV0YS9j
bGFzc2VzL3BhY2thZ2VfZGViLmJiY2xhc3MgfCAxMiArKysrKysrKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbWV0YS9j
bGFzc2VzL3BhY2thZ2VfZGViLmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMvcGFja2FnZV9kZWIuYmJj
bGFzcwppbmRleCA2ZjgxNTkxNjUzLi4yOGM2YjljMTlmIDEwMDY0NAotLS0gYS9tZXRhL2NsYXNz
ZXMvcGFja2FnZV9kZWIuYmJjbGFzcworKysgYi9tZXRhL2NsYXNzZXMvcGFja2FnZV9kZWIuYmJj
bGFzcwpAQCAtMTUsNiArMTUsMTAgQEAgQVBUQ09ORl9UQVJHRVQgPSAiJHtXT1JLRElSfSIKIAog
QVBUX0FSR1MgPSAiJHtAWycnLCAnLS1uby1pbnN0YWxsLXJlY29tbWVuZHMnXVtkLmdldFZhcigi
Tk9fUkVDT01NRU5EQVRJT05TIikgPT0gIjEiXX0iCiAKK0RQS0dfRkFTVCA/Pz0gIjAiCisKK0JC
X0hBU0hDT05GSUdfV0hJVEVMSVNUICs9ICJEUEtHX0ZBU1QiCisKIGRlZiBkZWJpYW5fYXJjaF9t
YXAoYXJjaCwgdHVuZSk6CiAgICAgdHVuZV9mZWF0dXJlcyA9IHR1bmUuc3BsaXQoKQogICAgIGlm
IGFyY2ggPT0gImFsbGFyY2giOgpAQCAtMjY5LDcgKzI3MywxMyBAQCBkZWYgZGViX3dyaXRlX3Br
Zyhwa2csIGQpOgogICAgICAgICAgICAgY29uZmZpbGVzLmNsb3NlKCkKIAogICAgICAgICBvcy5j
aGRpcihiYXNlZGlyKQotICAgICAgICBzdWJwcm9jZXNzLmNoZWNrX291dHB1dCgiUEFUSD1cIiVz
XCIgZHBrZy1kZWIgLWIgJXMgJXMiICUgKGxvY2FsZGF0YS5nZXRWYXIoIlBBVEgiKSwgcm9vdCwg
cGtnb3V0ZGlyKSwKKworICAgICAgICBpZiBkLmdldFZhcigiRFBLR19GQVNUIikgIT0gIjAiOgor
ICAgICAgICAgICAgZHBrZ19hcmdzID0gIi1aZ3ppcCAtejEiCisgICAgICAgIGVsc2U6CisgICAg
ICAgICAgICBkcGtnX2FyZ3MgPSAiIgorCisgICAgICAgIHN1YnByb2Nlc3MuY2hlY2tfb3V0cHV0
KCJQQVRIPVwiJXNcIiBkcGtnLWRlYiAlcyAtYiAlcyAlcyIgJSAobG9jYWxkYXRhLmdldFZhcigi
UEFUSCIpLCBkcGtnX2FyZ3MsIHJvb3QsIHBrZ291dGRpciksCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0ZGVycj1zdWJwcm9jZXNzLlNURE9VVCwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc2hlbGw9VHJ1ZSkKIAotLSAKMi4xOC4wCgo=

--------------548E4EE4E1B243024C13C558--
