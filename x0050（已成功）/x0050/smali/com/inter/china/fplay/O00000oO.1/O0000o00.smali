.class public Lcom/inter/china/fplay/O00000oO/O0000o00;
.super Ljava/lang/Object;
.source "StringTools.java"


# static fields
.field public static final O000000o:Ljava/lang/String;

.field public static final O00000Oo:Ljava/lang/String;

.field public static O00000o:Ljava/lang/String;

.field public static final O00000o0:[Ljava/lang/String;

.field public static O00000oO:Ljava/lang/String;

.field public static O00000oo:Ljava/lang/String;

.field public static O0000O0o:Ljava/lang/String;

.field public static O0000OOo:Ljava/lang/String;

.field private static final O0000Oo:[B

.field public static final O0000Oo0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 10
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O000000o:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000Oo:Ljava/lang/String;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o0:[Ljava/lang/String;

    .line 155
    const-string v0, "lac"

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o:Ljava/lang/String;

    .line 156
    const-string v0, "cid"

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oO:Ljava/lang/String;

    .line 157
    const-string v0, "sid"

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oo:Ljava/lang/String;

    .line 158
    const-string v0, "bid"

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000O0o:Ljava/lang/String;

    .line 159
    const-string v0, "nid"

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000OOo:Ljava/lang/String;

    .line 232
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000Oo:[B

    .line 235
    const-string v1, ""

    .line 237
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000Oo:[B

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000Oo0:Ljava/lang/String;

    .line 242
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 10
    nop

    :array_0
    .array-data 1
        0x2bt
        0x38t
        0x36t
    .end array-data

    .line 11
    :array_1
    .array-data 1
        0x38t
        0x36t
    .end array-data

    .line 232
    nop

    :array_2
    .array-data 1
        -0x19t
        -0x67t
        -0x45t
        -0x1bt
        -0x43t
        -0x6bt
        -0x1bt
        -0x5ct
        -0x59t
        -0x19t
        -0x5ct
        -0x44t
        -0x1bt
        -0x74t
        -0x7bt
    .end array-data
.end method
