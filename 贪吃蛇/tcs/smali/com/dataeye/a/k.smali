.class public final Lcom/dataeye/a/k;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static k:Ljava/util/Map;


# instance fields
.field public a:D

.field public b:D

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    iput-wide v2, p0, Lcom/dataeye/a/k;->a:D

    iput-wide v2, p0, Lcom/dataeye/a/k;->b:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/k;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/k;->d:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/k;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/k;->f:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/k;->g:I

    iput-boolean v1, p0, Lcom/dataeye/a/k;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/dataeye/a/k;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dataeye/a/k;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/util/Map;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    iput-wide v2, p0, Lcom/dataeye/a/k;->a:D

    iput-wide v2, p0, Lcom/dataeye/a/k;->b:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/k;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/k;->d:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/k;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/k;->f:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/k;->g:I

    iput-boolean v1, p0, Lcom/dataeye/a/k;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/dataeye/a/k;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dataeye/a/k;->j:Ljava/util/Map;

    iput-wide p1, p0, Lcom/dataeye/a/k;->a:D

    iput-wide p3, p0, Lcom/dataeye/a/k;->b:D

    iput-object p5, p0, Lcom/dataeye/a/k;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/dataeye/a/k;->d:Ljava/lang/String;

    iput p7, p0, Lcom/dataeye/a/k;->e:I

    iput-object p8, p0, Lcom/dataeye/a/k;->f:Ljava/lang/String;

    iput p9, p0, Lcom/dataeye/a/k;->g:I

    iput-boolean p10, p0, Lcom/dataeye/a/k;->h:Z

    iput-object p11, p0, Lcom/dataeye/a/k;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/dataeye/a/k;->a:D

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/dataeye/b/c;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dataeye/a/k;->a:D

    iget-wide v0, p0, Lcom/dataeye/a/k;->b:D

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/dataeye/b/c;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dataeye/a/k;->b:D

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/k;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/k;->d:Ljava/lang/String;

    iget v0, p0, Lcom/dataeye/a/k;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/k;->e:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/k;->f:Ljava/lang/String;

    iget v0, p0, Lcom/dataeye/a/k;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/k;->g:I

    iget-boolean v0, p0, Lcom/dataeye/a/k;->h:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dataeye/a/k;->h:Z

    sget-object v0, Lcom/dataeye/a/k;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dataeye/a/k;->k:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/dataeye/a/k;->k:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/dataeye/a/k;->k:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/dataeye/a/k;->j:Ljava/util/Map;

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 3

    iget-wide v0, p0, Lcom/dataeye/a/k;->a:D

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/e;->a(DI)V

    iget-wide v0, p0, Lcom/dataeye/a/k;->b:D

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/e;->a(DI)V

    iget-object v0, p0, Lcom/dataeye/a/k;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/k;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/dataeye/a/k;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/a/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/a/k;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/dataeye/a/k;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-boolean v0, p0, Lcom/dataeye/a/k;->h:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(ZI)V

    iget-object v0, p0, Lcom/dataeye/a/k;->j:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/a/k;->j:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/util/Map;I)V

    :cond_1
    return-void
.end method
