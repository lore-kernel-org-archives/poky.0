Received: from radex-web.radex.nl (radex-web.radex.nl [178.250.146.7])
 by mx.groups.io with SMTP id smtpd.web08.8713.1647605333702087191
 for <poky@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 05:08:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 178.250.146.7, mailfrom: fntoth@gmail.com)
Received: from [192.168.1.35] (cust-178-250-146-69.breedbanddelft.nl [178.250.146.69])
	by radex-web.radex.nl (Postfix) with ESMTPS id DE9292406A;
	Fri, 18 Mar 2022 13:08:51 +0100 (CET)
Message-ID: <b482b039-9133-6d80-156f-f578995203e6@gmail.com>
Date: Fri, 18 Mar 2022 13:08:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [poky] [PULL][PATCH 0/2] Implement debian packages GPG signing
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 Xavier Berger <xavier.berger@bio-logic.net>
Cc: poky@lists.yoctoproject.org
References: <29294.1624221743778282039@lists.yoctoproject.org>
 <16036.1647539972048006331@lists.yoctoproject.org>
 <CANNYZj9u=ELdqRekS-N-PY2z5nngV14iBSC77SKCUE7jZqUDJg@mail.gmail.com>
From: "Ferry Toth" <fntoth@gmail.com>
In-Reply-To: <CANNYZj9u=ELdqRekS-N-PY2z5nngV14iBSC77SKCUE7jZqUDJg@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------dZBltSz0drVnHwydp3qaiysp"
Content-Language: en-US

--------------dZBltSz0drVnHwydp3qaiysp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alex,

Clear. But they are not originally mine, I only fixed them up after 
rebase to gatesgarth.

I was hoping Xavier would respond. I put him in To: now.

Thanks,

Ferry

Op 17-03-2022 om 21:22 schreef Alexander Kanavin:
> You need to rebase any patches you have to master and send them to the
> oe-core list, otherwise nothing is going to happen.
>
> Alex
>
> On Thu, 17 Mar 2022 at 18:59, Ferry Toth<fntoth@gmail.com>  wrote:
>> It seems nobody is interested in using apt for package management? Strange.
>>
>> Let me explain: since gatesgart apt requires a repository to be signed. The above linked patches do exactly that. The can still be applied to hardknott and honister. To me seems to be a good addition that brings deb to the same level as rpm and ipk.
>>
>> On the signing-keys issue, it may be unrelated. Let me self answer this:
>>
>> signing-keys-dev depends on signing-keys which doesn't exist. It is not built because it is empty.
>>
>> This is resolved by adding to the recipe:
>>
>> ALLOW_EMPTY_${PN} = "1"
>>
>>
>> 
>>

--------------dZBltSz0drVnHwydp3qaiysp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font face="Noto Sans">Hi Alex,</font></p>
    <p><font face="Noto Sans">Clear. But they are not originally mine, I
        only fixed them up after rebase to gatesgarth.</font></p>
    <p><font face="Noto Sans">I was hoping Xavier would respond. I put
        him in To: now.</font></p>
    <p><font face="Noto Sans">Thanks,</font></p>
    <p><font face="Noto Sans">Ferry</font><br>
    </p>
    <div class="moz-cite-prefix">Op 17-03-2022 om 21:22 schreef
      Alexander Kanavin:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANNYZj9u=ELdqRekS-N-PY2z5nngV14iBSC77SKCUE7jZqUDJg@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">You need to rebase any patches you have to master and send them to the
oe-core list, otherwise nothing is going to happen.

Alex

On Thu, 17 Mar 2022 at 18:59, Ferry Toth <a class="moz-txt-link-rfc2396E" href="mailto:fntoth@gmail.com">&lt;fntoth@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
It seems nobody is interested in using apt for package management? Strange.

Let me explain: since gatesgart apt requires a repository to be signed. The above linked patches do exactly that. The can still be applied to hardknott and honister. To me seems to be a good addition that brings deb to the same level as rpm and ipk.

On the signing-keys issue, it may be unrelated. Let me self answer this:

signing-keys-dev depends on signing-keys which doesn't exist. It is not built because it is empty.

This is resolved by adding to the recipe:

ALLOW_EMPTY_${PN} = "1"




</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------dZBltSz0drVnHwydp3qaiysp--
