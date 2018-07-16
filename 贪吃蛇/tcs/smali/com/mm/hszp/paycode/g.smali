.class public final Lcom/mm/hszp/paycode/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/security/interfaces/RSAPrivateKey;

.field private static c:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mm/hszp/paycode/g;->a:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lcom/mm/hszp/paycode/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x400

    new-instance v2, Ljava/security/SecureRandom;

    invoke-static {}, Lcom/mm/hszp/paycode/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    sput-object v0, Lcom/mm/hszp/paycode/g;->c:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    sput-object v0, Lcom/mm/hszp/paycode/g;->b:Ljava/security/interfaces/RSAPrivateKey;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mm/hszp/paycode/g;->a:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 9

    const/16 v8, 0x80

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/mm/hszp/paycode/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v1, 0x2

    invoke-virtual {v5, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v6, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v3

    move v4, v3

    :goto_0
    sub-int v2, v6, v0

    if-gtz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    return-object v0

    :cond_1
    sub-int v2, v6, v0

    if-le v2, v8, :cond_2

    invoke-virtual {v5, p0, v0, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    array-length v7, v2

    invoke-virtual {v0, v2, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    mul-int/lit16 v0, v4, 0x80

    goto :goto_0

    :cond_2
    sub-int v2, v6, v0

    invoke-virtual {v5, p0, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mm/hszp/paycode/g;->b:Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mm/hszp/paycode/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 9

    const/16 v8, 0x75

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1}, Lcom/mm/hszp/paycode/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v1, 0x1

    invoke-virtual {v5, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v6, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v3

    move v4, v3

    :goto_0
    sub-int v2, v6, v0

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :cond_0
    sub-int v2, v6, v0

    if-le v2, v8, :cond_1

    invoke-virtual {v5, p0, v0, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    array-length v7, v2

    invoke-virtual {v0, v2, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    mul-int/lit8 v0, v4, 0x75

    goto :goto_0

    :cond_1
    sub-int v2, v6, v0

    invoke-virtual {v5, p0, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptByPublicKey data||publicKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mm/hszp/paycode/g;->c:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mm/hszp/paycode/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 7

    const-wide/16 v5, 0x3e8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :try_start_0
    const-string v2, "2010-01-01 0:0:0"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    div-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/mm/hszp/paycode/g;->a(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    div-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/mm/hszp/paycode/g;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
