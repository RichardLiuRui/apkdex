.class public Lcom/zy/hez/b/c;
.super Lcom/zy/hez/b/a;

# interfaces
.implements Lcom/zy/hez/b/g;


# instance fields
.field private a:Lcom/zy/hez/b/d;

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zy/hez/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zy/hez/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/b/c;->a:Lcom/zy/hez/b/d;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/zy/hez/b/d;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/b/c;->a:Lcom/zy/hez/b/d;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/b/c;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/b/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/b/c;->c:[B

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zy/hez/b/c;->e:Ljava/util/List;

    return-object v0
.end method
