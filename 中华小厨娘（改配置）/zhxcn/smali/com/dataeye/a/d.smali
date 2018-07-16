.class public final Lcom/dataeye/a/d;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static c:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dataeye/a/d;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/d;->a:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/a/d;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dataeye/a/d;->c:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/dataeye/a/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/dataeye/a/d;->c:Ljava/util/Map;

    invoke-virtual {p1, v0, v3, v3}, Lcom/dataeye/b/c;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/dataeye/a/d;->b:Ljava/util/Map;

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/a/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/d;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/util/Map;I)V

    return-void
.end method
