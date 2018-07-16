.class public Lorg/zzf/core/d/e;
.super Lorg/zzf/core/d/g;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/zzf/core/d/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/d/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/d/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/d/e;->a:Ljava/util/List;

    return-void
.end method
