.class public abstract Lcom/dataeye/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/dataeye/b/c;)V
.end method

.method protected abstract a(Lcom/dataeye/b/e;)V
.end method

.method public a()[B
    .locals 1

    new-instance v0, Lcom/dataeye/b/e;

    invoke-direct {v0}, Lcom/dataeye/b/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/f;->a(Lcom/dataeye/b/e;)V

    invoke-virtual {v0}, Lcom/dataeye/b/e;->a()[B

    move-result-object v0

    return-object v0
.end method
