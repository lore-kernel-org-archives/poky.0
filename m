Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 122E8E00AA2; Tue,  2 May 2017 05:14:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01A4CE007BA
	for <poky@yoctoproject.org>; Tue,  2 May 2017 05:14:11 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs49.server.lan (via HTTP);
	Tue, 2 May 2017 14:14:04 +0200
MIME-Version: 1.0
Message-ID: <trinity-67f1f47c-5a2d-432a-9dbe-85bdbb915412-1493727244291@3capp-gmx-bs49>
From: "Arno Steffens" <star@gmx.li>
To: "Jussi Kukkonen" <jussi.kukkonen@intel.com>
Date: Tue, 2 May 2017 14:14:04 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAHiDW_FdSg3_Us8-U=Rogo9vMBa+vTVorOHSK2e3wuABpVNN9w@mail.gmail.com>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
	<CAHiDW_FWzvCn7t0qzmrzSMpcbkqPRABNqgqA+gy-dWMW9U9sWA@mail.gmail.com>
	<1493382620.10199.3.camel@intel.com>
	<trinity-eae6d646-630d-4bb9-8464-6b557d1fd33e-1493719611703@3capp-gmx-bs49>,
	<CAHiDW_FdSg3_Us8-U=Rogo9vMBa+vTVorOHSK2e3wuABpVNN9w@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:9MyTrGW6AzNcnpeCdk9HCDewIjVa+hKIOKV+RRdfP48
	RNzZGocy33jdmVnu7EW57Gvs7VKrL/dHnOwTCM81l99267KSlB
	lZ+kVem7nge4sSlkqSsC/LiCkxHJE0JujFNjPvzA1vFvtuYWOZ
	1+j5mzJBPgr65adWl2Djj+Lmz9QgBKQ6ZboP4Ld1xsc3ZV53Jy
	URZEZyvKhePHDsUnQ2Nio1adQl5trhbHTX/XZVkJx6xzQd8U3B
	Oz6xIF+mH+WY139VEqsdIKpS/JBboJj2CE4By37yDZY0Uy6zcv CI/wmk=
X-UI-Out-Filterresults: notjunk:1;V01:K0:QGYd0WOVrVg=:My3uz+7ScUihDsFnc4siXw
	ZP0hETxkI2tvmTAUf3U49mu5JE9mb9jOen+eQpEbDC0P6Ecf2GUZbqf7JBYO3LKVibGLbv8lp
	45Zq5RUS9hhfmr87lp/lAoPcM6g+h9r4ULekz9XUgPBHwLhfwU0/MVmGfB6emJo24VaK6n8b4
	mOGKRNq5ZbGlDk55Ahch0tse2aSUHixsHtGOdGFznKASyEkFsmSt8ZdwbBq3eFad2ewd3aFDS
	epq4YR3r+YoasHB3ivWs2Brnh5TLkdjd6BO+oTthZOVydmIoV/lOLuU5S1S8mzTbj3mgp3rma
	QFU+CR9vnMGgcPXezi0WOzlUpmfcRpLAdAfWd0M/wRal4enxGZbCT7x59jCItVUuDAXucUty2
	9IaNel32p1o6dRBTcYT0nlqp8WZTRquiNbpt3BW6sqBFUrIMFHNzxHRSN9NJep8wXuTlH1y5t
	FiI2an1nvw==
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gnupg strip down
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
X-List-Received-Date: Tue, 02 May 2017 12:14:14 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>Thanks, this reduces the image to a good amount.</div>

<div>To my experience, this should be fine with the dependencies, but extended tests follow.</div>

<div>Great!</div>

<div>Arno</div>

<div>&nbsp;
<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Dienstag, 02. Mai 2017 um 12:38 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Jussi Kukkonen&quot; &lt;jussi.kukkonen@intel.com&gt;<br/>
<b>An:</b>&nbsp;&quot;Arno Steffens&quot; &lt;star@gmx.li&gt;<br/>
<b>Cc:</b>&nbsp;&quot;poky@yoctoproject.org&quot; &lt;poky@yoctoproject.org&gt;<br/>
<b>Betreff:</b>&nbsp;Re: Re: [poky] gnupg strip down</div>

<div name="quoted-content">
<div>
<div class="gmail_extra">
<div class="gmail_quote">On 2 May 2017 at 13:06, Arno Steffens <span>&lt;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&gt;</span> wrote:

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;"><br/>
<br/>
&gt; Gesendet: Freitag, 28. April 2017 um 14:30 Uhr<br/>
&gt; Von: &quot;Wold, Saul&quot; &lt;<a href="mailto:saul.wold@intel.com" onclick="parent.window.location.href=&#39;saul.wold@intel.com&#39;; return false;" target="_blank">saul.wold@intel.com</a>&gt;<br/>
&gt; An: &quot;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&quot; &lt;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&gt;, &quot;Kukkonen, Jussi&quot; &lt;<a href="mailto:jussi.kukkonen@intel.com" onclick="parent.window.location.href=&#39;jussi.kukkonen@intel.com&#39;; return false;" target="_blank">jussi.kukkonen@intel.com</a>&gt;<br/>
&gt; Cc: &quot;<a href="mailto:poky@yoctoproject.org" onclick="parent.window.location.href=&#39;poky@yoctoproject.org&#39;; return false;" target="_blank">poky@yoctoproject.org</a>&quot; &lt;<a href="mailto:poky@yoctoproject.org" onclick="parent.window.location.href=&#39;poky@yoctoproject.org&#39;; return false;" target="_blank">poky@yoctoproject.org</a>&gt;, &quot;<a href="mailto:alexander.kanavin@linux.intel.com" onclick="parent.window.location.href=&#39;alexander.kanavin@linux.intel.com&#39;; return false;" target="_blank">alexander.kanavin@linux.intel.com</a>&quot; &lt;<a href="mailto:alexander.kanavin@linux.intel.com" onclick="parent.window.location.href=&#39;alexander.kanavin@linux.intel.com&#39;; return false;" target="_blank">alexander.kanavin@linux.intel.com</a>&gt;<br/>
&gt; Betreff: Re: [poky] gnupg strip down
<div>
<div class="gmail-h5">&gt;<br/>
&gt; On Fri, 2017-04-28 at 11:35 +0300, Jussi Kukkonen wrote:<br/>
&gt; &gt; On 28 April 2017 at 10:31, Arno Steffens &lt;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&gt; wrote:<br/>
&gt; &gt; &gt; I did as advised, created a bbappend for gnupg, like that:<br/>
&gt; &gt; &gt;<br/>
&gt; &gt; &gt; do_install_append() {<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgv<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgsm<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpg-connect-agent<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/dirmngr-client<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgscm<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/watchgnupg<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgparsemail<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgconf<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/dirmngr<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgtar<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpgv2<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/gpg-agent<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}&#36;{bindir}/kbxutil<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}/usr/sbin/*<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rmdir &#36;{D}/usr/sbin<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}/usr/share/gnupg/help*<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}/usr/libexec/gpg-*<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rm &#36;{D}/usr/libexec/scdaemon<br/>
&gt; &gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; rmdir &#36;{D}/usr/libexec<br/>
&gt; &gt; &gt; }<br/>
&gt; &gt; &gt;<br/>
&gt; &gt; &gt; First I get errors, cleaning files and leave directory, but than I<br/>
&gt; &gt; &gt; get it, that I have to remove empty folders too. Ok, that could be<br/>
&gt; &gt; &gt; done smarter. So just gpg and few small files left.<br/>
&gt; &gt; &gt;<br/>
&gt; &gt; &gt; But I don&#39;t have an idea howto remove the libs, that seems to be<br/>
&gt; &gt; &gt; required only by the removed binaries,<br/>
&gt; &gt; &gt; like libgnutils.so, libgmp.so - which are rather big ...&nbsp;<br/>
&gt; &gt;<br/>
&gt; &gt; I don&#39;t see evidence that the binaries you mentioned would depend on<br/>
&gt; &gt; those libraries (at least with current sysroot behaviour -- it might<br/>
&gt; &gt; happen by mistake on older releases). But there is this line in the<br/>
&gt; &gt; recipe:<br/>
&gt; &gt; RDEPENDS_&#36;{PN} = &quot;gnutls&quot;<br/>
&gt; &gt;<br/>
&gt; &gt; Saul, do you happen to remember why that was added (more than two<br/>
&gt; &gt; years ago in poky 31059be9).<br/>
&gt; &gt;<br/>
&gt; Sorry no, too long ago, but looking at the patch it seems that the<br/>
&gt; dirmngr_LDADD had LIBGNUTLS before and after the change so possibly<br/>
&gt; that showed it should have been available.<br/>
&gt;<br/>
&gt; If something has changed with dirmngr than maybe that can be removed.<br/>
&nbsp;</div>
</div>
How would you avoid installation of this gnutls in this case? So what do I have to add in my bbappend (see above)? To my shame: my skill are rather limited in handling this.</blockquote>
</div>
</div>

<div class="gmail_extra">&nbsp;</div>

<div class="gmail_extra">The runtime dependency on gnutls can be removed in the original recipe file by just removing the RDEPENDS_{PN} line. If you want to do it in a bbappend then this should work:</div>

<div class="gmail_extra">&nbsp; &nbsp;RDEPENDS_&#36;{PN}_remove = &quot;gnutls&quot;</div>

<div class="gmail_extra">That should lead to gnutls not being automatically added to the image when gnupg is added.</div>

<div class="gmail_extra">&nbsp;</div>

<div class="gmail_extra">I think this change won&#39;t break anything but there&#39;s only one way to find out...</div>

<div class="gmail_extra">&nbsp;</div>

<div class="gmail_extra">Jussi</div>

<div class="gmail_extra">&nbsp;</div>

<div class="gmail_extra">&nbsp;</div>
</div>
</div>
</div>
</div>
</div></div></body></html>

