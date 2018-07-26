.class public Lbn/sdk/szwcsss/common/y/wyyp;
.super Ljava/lang/Object;


# static fields
.field private static c:Lbn/sdk/szwcsss/common/y/wyyp;


# instance fields
.field private a:Lbn/sdk/szwcsss/common/y/cx;

.field private appInfo:Landroid/content/pm/ApplicationInfo;

.field private mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbn/sdk/szwcsss/common/y/wyyp;->c:Lbn/sdk/szwcsss/common/y/wyyp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbn/sdk/szwcsss/common/y/cx;->b()Lbn/sdk/szwcsss/common/y/cx;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->a:Lbn/sdk/szwcsss/common/y/cx;

    return-void
.end method

.method public static getInstance()Lbn/sdk/szwcsss/common/y/wyyp;
    .locals 1

    sget-object v0, Lbn/sdk/szwcsss/common/y/wyyp;->c:Lbn/sdk/szwcsss/common/y/wyyp;

    if-nez v0, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/common/y/wyyp;

    invoke-direct {v0}, Lbn/sdk/szwcsss/common/y/wyyp;-><init>()V

    sput-object v0, Lbn/sdk/szwcsss/common/y/wyyp;->c:Lbn/sdk/szwcsss/common/y/wyyp;

    :cond_0
    sget-object v0, Lbn/sdk/szwcsss/common/y/wyyp;->c:Lbn/sdk/szwcsss/common/y/wyyp;

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getmCtx()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/wyyp;->mCtx:Landroid/content/Context;

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b()Lbn/sdk/szwcsss/coddxcxc/x/cx;

    move-result-object v0

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->a:Lbn/sdk/szwcsss/common/y/cx;

    invoke-virtual {v0, p1}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b()Lbn/sdk/szwcsss/coddxcxc/x/cx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b(Landroid/content/Context;)V

    const-string v0, "channel no init"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;)Z
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->a:Lbn/sdk/szwcsss/common/y/cx;

    invoke-virtual {v0, p1, p2, p3}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;)Z

    move-result v0

    return v0
.end method

.method public retryInit()V
    .locals 1

    const-string v0, "retryInit start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "retryInit exe"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/wyyp;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lbn/sdk/szwcsss/common/y/wyyp;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/wyyp;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public setmCtx(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/wyyp;->mCtx:Landroid/content/Context;

    return-void
.end method
