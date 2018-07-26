.class public Lbn/sdk/szwcsss/coddxcxc/y/while;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(C)I
    .locals 3

    const/4 v1, 0x0

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_0

    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_0
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x2

    :cond_1
    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v0, 0x3

    :cond_2
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_3

    const/4 v0, 0x4

    :cond_3
    const-string v2, "5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_4

    const/4 v0, 0x5

    :cond_4
    const-string v2, "6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_5

    const/4 v0, 0x6

    :cond_5
    const-string v2, "7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_6

    const/4 v0, 0x7

    :cond_6
    const-string v2, "8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_7

    const/16 v0, 0x8

    :cond_7
    const-string v2, "9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_8

    const/16 v0, 0x9

    :cond_8
    const-string v2, "A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_9

    const/16 v0, 0xa

    :cond_9
    const-string v2, "B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_a

    const/16 v0, 0xb

    :cond_a
    const-string v2, "C"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_b

    const/16 v0, 0xc

    :cond_b
    const-string v2, "D"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_c

    const/16 v0, 0xd

    :cond_c
    const-string v2, "E"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_d

    const/16 v0, 0xe

    :cond_d
    const-string v2, "F"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_e

    const/16 v0, 0xf

    :cond_e
    return v0

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(C)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(C)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b([B[B)[B
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 7

    const/16 v2, 0x30

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOOL"

    const-string v2, "decrypt file not xml"

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B

    move-result-object v3

    const-string v2, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    invoke-direct {p0, v5, v4}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    const-string v3, "decrypt pay file succ"

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    const-string v1, "decrypt close file exception "

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "decrypt pay file fail [key error]"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    :try_start_6
    const-string v3, "decrypt open file fail"

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_8
    const-string v1, "decrypt close file exception "

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    :goto_2
    if-eqz v3, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :try_start_a
    const-string v1, "decrypt close file exception "

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    throw v2

    :cond_3
    const-string v1, "decrypt pay file fail [key length error]"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_6
    move-exception v3

    goto :goto_1
.end method

.method public b([BI)[B
    .locals 6

    const/16 v2, 0x30

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-direct {p0, p1, v3}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    const-string v2, "decryptFromBytes pay file succ"

    invoke-static {v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "decryptFromBytes ioexception"

    invoke-static {v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "decryptFromFs pay file fail [key error]"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_4
    const-string v0, "decryptFromBytes pay file fail [key length error]"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public for(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 7

    const/16 v2, 0x30

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "decryptFromFs file not xml"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B

    move-result-object v3

    const-string v2, "D87SF8739DAB098787C09867654379965355FEEEAAADCSCC"

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    invoke-virtual {p2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    invoke-direct {p0, v5, v4}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lbn/sdk/szwcsss/coddxcxc/y/while;->b([B[B)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    const-string v3, "decryptFromFs pay file succ"

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    const-string v1, "decryptFromFs close file exception "

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "decryptFromFs pay file fail [key error]"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    :try_start_6
    const-string v3, "decryptFromFs open file fail"

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_8
    const-string v1, "decryptFromFs close file exception "

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    :goto_2
    if-eqz v3, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v1

    :try_start_a
    const-string v1, "decryptFromFs close file exception "

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    throw v2

    :cond_3
    const-string v1, "decryptFromFs pay file fail [key length error]"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_6
    move-exception v3

    goto :goto_1
.end method
