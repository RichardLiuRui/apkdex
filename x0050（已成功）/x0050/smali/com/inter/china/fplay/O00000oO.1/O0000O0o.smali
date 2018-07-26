.class public Lcom/inter/china/fplay/O00000oO/O0000O0o;
.super Ljava/lang/Object;
.source "CacheDownComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 15
    const-class v0, Lcom/inter/china/fplay/O00000oO/O0000O0o;

    const-string v1, "\u6267\u884c\u6bd4\u8f83\u65b9\u6cd5"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 16
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 19
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 20
    const/4 v0, 0x0

    .line 21
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_0
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 24
    const/4 v0, -0x1

    .line 25
    :cond_1
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/inter/china/fplay/O00000oO/O0000O0o;->O000000o(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
