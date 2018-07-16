.class public Lorg/zzf/core/k;
.super Ljava/lang/Object;


# static fields
.field private static b:Lorg/zzf/core/k;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/k;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lorg/zzf/core/k;
    .locals 1

    sget-object v0, Lorg/zzf/core/k;->b:Lorg/zzf/core/k;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/k;

    invoke-direct {v0}, Lorg/zzf/core/k;-><init>()V

    sput-object v0, Lorg/zzf/core/k;->b:Lorg/zzf/core/k;

    :cond_0
    sget-object v0, Lorg/zzf/core/k;->b:Lorg/zzf/core/k;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/StringReader;
    .locals 6

    const/4 v1, 0x0

    const-string v2, "<display>"

    const-string v0, "</display>"

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/ui/FeeView;->e:Ljava/lang/String;

    new-instance v0, Ljava/io/StringReader;

    const/4 v3, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
