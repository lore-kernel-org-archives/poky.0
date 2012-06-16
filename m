Return-Path: <scanli@126.com>
Received: from m15-56.126.com (m15-56.126.com [220.181.15.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A427E01351
	for <poky@yoctoproject.org>; Sat, 16 Jun 2012 16:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=mnJStrvUro1n3GUTbGIcZUS5+annYpVAanTW
	xp+Wc38=; b=D441FEv81NT9v1+r1Tz3f+qMKc5RYykFZT2UUVoNg9uUBfaGDDcG
	KzYmkUmRFeI+RRRxKdLskbAPrzmUXrLUypVMXaU3+L6ZOyUAGgEaVRTONXkV6vuF
	EVK256ZTWKF4ckz41Q5H5jL8LKS+LeMVGkbBp9LlY88v+dFpUoaHZLo=
Received: from scanli$126.com ( [211.136.28.180] ) by ajax-webmail-wmsvr56
	(Coremail) ; Sun, 17 Jun 2012 07:08:24 +0800 (CST)
X-Originating-IP: [211.136.28.180]
Date: Sun, 17 Jun 2012 07:08:24 +0800 (CST)
From: =?GBK?B?wO698LPJ?= <scanli@126.com>
To: poky@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120507(18390.4657.4663) Copyright (c) 2002-2012 www.mailtech.cn
	126com
X-CM-CTRLDATA: eoqW32Zvb3Rlcl9odG09MTU4OTo4MQ==
MIME-Version: 1.0
Message-ID: <78248fe8.5b6.137f78df488.Coremail.scanli@126.com>
X-CM-TRANSID: OMqowEA5KkXoEd1P5LQiAA--.8605W
X-CM-SenderInfo: hvfd0zbl6rjloofrz/1tbiOhjPdE501HJDMAABs3
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: HOB can't ignore "QA Issue: No GNU_HASH in the elf binary....."
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
X-List-Received-Date: Sat, 16 Jun 2012 23:08:27 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3852_224868263.1339888104584"

------=_Part_3852_224868263.1339888104584
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

IEhpIGFsbCEKSSdtIHVzaW5nIHBva3kgZ3VpIGhvYiB0byBkZXZlbG9wIG15IHN5c3RlbSBpbWFn
ZSB3aXRoIGV4dGVybmFsIHRvb2xjaGFpbiChsFNvdXJjZXJ5IENvZGVCZW5jaCBMaXRlIDIwMTEu
MDktNzChsS4KTXkgcG9reSBpcyAicG9reS1kZW56aWwtNy4wIixJbiBVYnVudHUgMTIsMDQgTFRT
LgpXaGVuIEkgbGF1bmNoZSBwb2t5ICB3aXRoIGhvYiBndWksIHRoZSBwb2t5IGZhaWxlZCB3aXRo
IHRoZSBmZWxsb3cgbWVzc2FnZXM6CiAgICAgIC4uLi4uLgogICAgICBRQSBJc3N1ZTpObyBHTlVf
SEFTSCBpbiB0aGUgZWxmIGJpbmFyeTonL2hvbWUvbGpjL3Bva3ktZGVuemlsLTcuMC9idWlsZC90
bXAvd29yay9hcm12Ni12ZnAtcG9reS1saW51eC1nbnVlYWJpL3BlcmwtCiAgICAgICAgICAgICAg
ICAgICAgICA1LjE0LjItcjYvcGFja2FnZXMtc3BsaXQvcGVybC1tb2R1bGUtdGhyZWFkcy91c3Iv
bGliL3BlcmwvNS4xNC4yL2F1dG8vdGhyZWFkcy9zaGFyZWQvc2hhcmVkLnNvJwogICAgICBRQSBy
dW4gZm91bmQgZmF0YWwgZXJyb3JzLlBsZWFzZSBjb25zaWRlciBmaXhpbmcgdGhlbi4KICAgICAg
RnVuY3Rpb24gZmFpbGQ6ZG9fcGFja2FnZV9xYQoKV2hlbiBJIGxhdW5jaGUgcG9reSAgd2l0aCBj
bWQgbGluZSwgdGhlIHBva3kgcGFzc2VkIHdpdGggdGhlIGZlbGxvdyBtZXNzYWdlczoKICAgICAg
Li4uLi4KICAgICAgIFdBUk5JTkc6IFFBIElzc3VlOiBObyBHTlVfSEFTSCBpbiB0aGUgZWxmIGJp
bmFyeTogJy9ob21lL2xqYy9wb2t5LWRlbnppbC03LjAvYnVpbGQvdG1wL3dvcmsvYXJtdjYtdmZw
LXBva3ktbGludXgtCiAgICAgICAgICAgICAgIGdudWVhYmkvcGVybC01LjE0LjItcjYvcGFja2Fn
ZXMtc3BsaXQvcGVybC1tb2R1bGUtdGhyZWFkcy91c3IvbGliL3BlcmwvNS4xNC4yL2F1dG8vdGhy
ZWFkcy9zaGFyZWQvc2hhcmVkLnNvJwogICAgICAgIE5PVEU6IHBhY2thZ2UgcHl0aG9uLTIuNy4y
LXIyLjE0OiB0YXNrIGRvX3BhY2thZ2Vfd3JpdGVfcnBtOiBTdWNjZWVkZWQKCkhvdyBjYW4gSSBz
ZXR1cCB0byBpZ25vcmUgdGhlICJRQSBJc3N1ZTogTm8gR05VX0hBU0ggaW4gdGhlIGVsZiBiaW5h
cnkuLi4uLi4iIHdoZW4gdXNlIEhPQj8KVGhhbmtzIQoKCg==

------=_Part_3852_224868263.1339888104584
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6YXJpYWwiPiZuYnNwO0hpIGFsbCE8YnI+SSdtIHVzaW5nIHBva3kgZ3VpIGhv
YiB0byBkZXZlbG9wIG15IHN5c3RlbSBpbWFnZSB3aXRoICBleHRlcm5hbCB0b29sY2hhaW4gobBT
b3VyY2VyeSBDb2RlQmVuY2ggTGl0ZSAyMDExLjA5LTcwobEuPGJyPk15IHBva3kgaXMgInBva3kt
ZGVuemlsLTcuMCIsSW4gVWJ1bnR1IDEyLDA0IExUUy48YnI+V2hlbiBJIGxhdW5jaGUgcG9reSZu
YnNwOyB3aXRoIGhvYiBndWksIHRoZSBwb2t5IGZhaWxlZCB3aXRoIHRoZSBmZWxsb3cgbWVzc2Fn
ZXM6PGJyPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAuLi4uLi48YnI+Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFFBIElzc3VlOk5vIEdOVV9IQVNIIGluIHRoZSBlbGYgYmlu
YXJ5OicvaG9tZS9samMvcG9reS1kZW56aWwtNy4wL2J1aWxkL3RtcC93b3JrL2FybXY2LXZmcC1w
b2t5LWxpbnV4LWdudWVhYmkvcGVybC0gPGJyPiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAm
bmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgNS4xNC4yLXI2
L3BhY2thZ2VzLXNwbGl0L3BlcmwtbW9kdWxlLXRocmVhZHMvdXNyL2xpYi9wZXJsLzUuMTQuMi9h
dXRvL3RocmVhZHMvc2hhcmVkL3NoYXJlZC5zbyc8YnI+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7IFFBIHJ1biBmb3VuZCBmYXRhbCBlcnJvcnMuUGxlYXNlIGNvbnNpZGVyIGZpeGluZyB0
aGVuLjxicj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgRnVuY3Rpb24gZmFpbGQ6ZG9f
cGFja2FnZV9xYTxicj48YnI+V2hlbiBJIGxhdW5jaGUgcG9reSZuYnNwOyB3aXRoIGNtZCBsaW5l
LCB0aGUgcG9reSBwYXNzZWQgd2l0aCB0aGUgZmVsbG93IG1lc3NhZ2VzOjxicj4mbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsgLi4uLi48YnI+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7IFdBUk5JTkc6IFFBIElzc3VlOiBObyBHTlVfSEFTSCBpbiB0aGUgZWxmIGJpbmFy
eTogJy9ob21lL2xqYy9wb2t5LWRlbnppbC03LjAvYnVpbGQvdG1wL3dvcmsvYXJtdjYtdmZwLXBv
a3ktbGludXgtPGJyPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBnbnVlYWJpL3BlcmwtNS4x
NC4yLXI2L3BhY2thZ2VzLXNwbGl0L3BlcmwtbW9kdWxlLXRocmVhZHMvdXNyL2xpYi9wZXJsLzUu
MTQuMi9hdXRvL3RocmVhZHMvc2hhcmVkL3NoYXJlZC5zbyc8YnI+Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IE5PVEU6IHBhY2thZ2UgcHl0aG9uLTIuNy4yLXIyLjE0
OiB0YXNrIGRvX3BhY2thZ2Vfd3JpdGVfcnBtOiBTdWNjZWVkZWQ8YnI+PGJyPkhvdyBjYW4gSSBz
ZXR1cCB0byBpZ25vcmUgdGhlICJRQSBJc3N1ZTogTm8gR05VX0hBU0ggaW4gdGhlIGVsZiBiaW5h
cnkuLi4uLi4iIHdoZW4gdXNlIEhPQj88YnI+VGhhbmtzITxicj48YnI+PGJyPjwvZGl2Pjxicj48
YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vmb290ZXIiPjxzcGFuIGlkPSJuZXRlYXNlX21haWxfZm9v
dGVyIj48L3NwYW4+PC9zcGFuPg==

------=_Part_3852_224868263.1339888104584--
