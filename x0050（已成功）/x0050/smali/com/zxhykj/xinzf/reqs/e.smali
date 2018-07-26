.class public Lcom/zxhykj/xinzf/reqs/e;
.super Lcom/zxhykj/xinzf/reqs/BaseImpReqs;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;-><init>()V

    iput-object p1, p0, Lcom/zxhykj/xinzf/reqs/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/reqs/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/zxhykj/xinzf/b/d;
    .locals 1

    sget-object v0, Lcom/zxhykj/xinzf/b/d;->a:Lcom/zxhykj/xinzf/b/d;

    return-object v0
.end method
