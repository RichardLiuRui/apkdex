.class public Lcom/android/mtools/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/b;->a([B)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "resultCode"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gid"

    const-string v2, "gid"

    invoke-static {v2, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpOid"

    const-string v2, "cpOid"

    invoke-static {v2, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    const-string v2, "price"

    invoke-static {v2, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1, v3, v3, v0, p3}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "coid"

    const-string v2, "coid"

    invoke-static {v2, p1}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1, v3, v3, v0, p2}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 3

    const-string v0, "soid"

    invoke-static {v0, p0}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1, v0}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    const/16 v1, 0x842

    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gid"

    const-string v2, "gid"

    invoke-static {v2, p0}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpOid"

    const-string v2, "cpOid"

    invoke-static {v2, p0}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    const-string v2, "price"

    invoke-static {v2, p0}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isFirstTime"

    const-string v2, "if"

    invoke-static {v2, p0}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1, v3, v3, v0, p1}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method private static a([B)[B
    .locals 3

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    const-string v2, "Crypto"

    invoke-static {v1, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/b;->a([B)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v2, p0, v0

    const-string v3, "0123456789ABCDEF"

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vmId"

    const-string v2, "vmId"

    invoke-static {v2, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "childOid"

    const-string v2, "soid"

    invoke-static {v2, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resultCode"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1, v3, v3, v0, p3}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultCode==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestType==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const-string v0, ""

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, ""

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-ne v3, v5, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    return-void

    :sswitch_1
    invoke-static {p3, p4, v1}, Lcom/android/mtools/b;->a(Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sparse-switch p1, :sswitch_data_1

    :goto_2
    :sswitch_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2, v1, p3, p4, v0}, Lcom/android/mtools/b;->a(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    const-string v0, "1"

    invoke-static {v0, p3, p4}, Lcom/android/mtools/b;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_1

    :sswitch_5
    const/4 v0, 0x1

    invoke-static {v0, v1, p3, p4}, Lcom/android/mtools/b;->b(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_1

    :cond_2
    sparse-switch p1, :sswitch_data_2

    goto :goto_1

    :sswitch_6
    invoke-static {v3, v1, p3, p4, v0}, Lcom/android/mtools/b;->a(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    const/4 v0, 0x0

    invoke-static {p3, p4, v0}, Lcom/android/mtools/b;->a(Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_8
    const-string v0, "2"

    invoke-static {v0, p3, p4}, Lcom/android/mtools/b;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_1

    :sswitch_9
    invoke-static {v3, v1, p3, p4}, Lcom/android/mtools/b;->b(ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :sswitch_a
    invoke-static {p3, p4, v6}, Lcom/android/mtools/b;->a(Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_b
    const/4 v1, 0x2

    const-string v2, "MPAY"

    const/16 v3, 0x83e

    const-string v4, "gid"

    invoke-static {v4, p3}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cpOid"

    invoke-static {v5, p3}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v7, v7, v2, p4}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_2

    :sswitch_c
    invoke-static {p3}, Lcom/android/mtools/b;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x64 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_2
        0x4 -> :sswitch_c
        0x64 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_0
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(ILjava/util/List;Landroid/os/Handler;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p2, p3, v5}, Lcom/android/mtools/b;->a(Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "MPAY"

    const/16 v1, 0x83d

    const-string v2, "gid"

    invoke-static {v2, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpOid"

    invoke-static {v3, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v4, v4, v0, p3}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "2"

    invoke-static {v0, p2, p3}, Lcom/android/mtools/b;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_3
    invoke-static {p2}, Lcom/android/mtools/b;->a(Ljava/util/List;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(ILjava/util/List;Landroid/os/Handler;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-static {p2, p3, v6}, Lcom/android/mtools/b;->a(Ljava/util/List;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    const-string v1, "MPAY"

    const/16 v2, 0x83c

    const-string v3, "gid"

    invoke-static {v3, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpOid"

    invoke-static {v4, p2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v5, v5, v1, p3}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "2"

    invoke-static {v0, p2, p3}, Lcom/android/mtools/b;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_4
    invoke-static {p2}, Lcom/android/mtools/b;->a(Ljava/util/List;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
