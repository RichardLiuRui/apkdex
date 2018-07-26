.class public Lcom/boJUF/Kuox;
.super Ljava/lang/Object;


# instance fields
.field private LA:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/boJUF/Kuox;->LA:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/boJUF/Kuox;-><init>()V

    return-void
.end method

.method private static LA(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/JO/XQ;->LA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.SEND_SMS"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/JO/XQ;->LA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/JO/XQ;->LA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/JO/XQ;->LA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic LA(Lcom/boJUF/Kuox;Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p1}, Lcom/boJUF/Kuox;->LA(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/boJUF/Kuox;
    .locals 1

    invoke-static {}, Lcom/boJUF/oC;->LA()Lcom/boJUF/Kuox;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/boJUF/mB/mB/VD/oC;->LA(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->On()Z

    move-result v2

    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->cp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/XQ;->LA(Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/tP/uI;->LA(Landroid/content/Context;)V

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Ke;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/vG;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/boJUF/Kuox;->LA(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/boJUF/Kuox;->LA:I

    if-ge v0, v4, :cond_0

    iget v0, p0, Lcom/boJUF/Kuox;->LA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boJUF/Kuox;->LA:I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkPermission"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    invoke-static {p1, v0, v1}, Lcom/boJUF/mB/mB/ek/uI;->LA(Landroid/app/Activity;[Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boJUF/uI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/boJUF/uI;-><init>(Lcom/boJUF/Kuox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkPermission"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/vG;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public star(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boJUF/vvPaListener;)V
    .locals 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkPermission"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cpoid"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x838

    invoke-static {v0, v1, p1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-static {p1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/boJUF/mB/mB/VD/Ke;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boJUF/vvPaListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
