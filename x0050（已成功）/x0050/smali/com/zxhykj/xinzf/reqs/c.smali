.class public Lcom/zxhykj/xinzf/reqs/c;
.super Lcom/zxhykj/xinzf/reqs/BaseImpReqs;


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zxhykj/xinzf/reqs/c;->a:[B

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x75t
        0x70t
        0x64t
        0x61t
        0x74t
        0x65t
        0x2et
        0x64t
        0x6ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/zxhykj/xinzf/beans/UpBean;->getInstance(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/zxhykj/xinzf/beans/UpBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;-><init>(Lcom/zxhykj/xinzf/beans/UpBean;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/zxhykj/xinzf/reqs/c;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public b()Lcom/zxhykj/xinzf/b/d;
    .locals 1

    sget-object v0, Lcom/zxhykj/xinzf/b/d;->b:Lcom/zxhykj/xinzf/b/d;

    return-object v0
.end method
