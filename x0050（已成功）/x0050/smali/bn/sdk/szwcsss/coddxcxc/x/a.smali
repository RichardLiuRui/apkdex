.class public Lbn/sdk/szwcsss/coddxcxc/x/a;
.super Lbn/sdk/szwcsss/coddxcxc/z/cx;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/coddxcxc/x/implements;


# direct methods
.method public constructor <init>(Lbn/sdk/szwcsss/coddxcxc/x/implements;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/a;->b:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lbn/sdk/szwcsss/coddxcxc/x/transient;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "payRstUp rsp == %s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
