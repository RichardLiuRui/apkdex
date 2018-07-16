.class public final Lcom/dataeye/a/i;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static i:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/i;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/i;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dataeye/a/i;->c:J

    iput v1, p0, Lcom/dataeye/a/i;->d:I

    iput v1, p0, Lcom/dataeye/a/i;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/i;->f:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dataeye/a/i;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dataeye/a/i;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/i;->b:Ljava/lang/String;

    iget-wide v0, p0, Lcom/dataeye/a/i;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dataeye/b/c;->a(JIZ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dataeye/a/i;->c:J

    iget v0, p0, Lcom/dataeye/a/i;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/i;->d:I

    iget v0, p0, Lcom/dataeye/a/i;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/i;->e:I

    iget-object v0, p0, Lcom/dataeye/a/i;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/i;->f:Ljava/lang/String;

    iget-wide v0, p0, Lcom/dataeye/a/i;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dataeye/b/c;->a(JIZ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dataeye/a/i;->g:J

    sget-object v0, Lcom/dataeye/a/i;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dataeye/a/i;->i:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/dataeye/a/i;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/dataeye/a/i;->i:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/dataeye/a/i;->h:Ljava/util/Map;

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 3

    iget-object v0, p0, Lcom/dataeye/a/i;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/i;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/dataeye/a/i;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/e;->a(JI)V

    iget v0, p0, Lcom/dataeye/a/i;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/i;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/a/i;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/dataeye/a/i;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/e;->a(JI)V

    iget-object v0, p0, Lcom/dataeye/a/i;->h:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/util/Map;I)V

    return-void
.end method
