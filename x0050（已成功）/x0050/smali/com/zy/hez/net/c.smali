.class public Lcom/zy/hez/net/c;
.super Lcom/zy/hez/net/AbstractReq;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/zy/hez/model/ReqParam;->getInstance(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/zy/hez/model/ReqParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zy/hez/net/AbstractReq;-><init>(Lcom/zy/hez/model/ReqParam;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "/checkupdate.html"

    return-object v0
.end method

.method public b()Lcom/zy/hez/b/d;
    .locals 1

    sget-object v0, Lcom/zy/hez/b/d;->b:Lcom/zy/hez/b/d;

    return-object v0
.end method
