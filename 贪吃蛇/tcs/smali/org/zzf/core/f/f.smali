.class public Lorg/zzf/core/f/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    iput-object p1, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lorg/zzf/core/f/g;
    .locals 1

    invoke-virtual {p0}, Lorg/zzf/core/f/f;->e()Lorg/zzf/core/f/g;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/zzf/core/f/f;->b()Lorg/zzf/core/f/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/zzf/core/f/f;->c()Lorg/zzf/core/f/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/zzf/core/f/f;->d()Lorg/zzf/core/f/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/zzf/core/f/f;->f()Lorg/zzf/core/f/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/zzf/core/f/g;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "com.android.internal.telephony.Phone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v1, "GEMINI_SIM_1"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    const-string v1, "GEMINI_SIM_2"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "getSubscriberIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "getDeviceIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    new-instance v0, Lorg/zzf/core/f/g;

    invoke-direct {v0, p0}, Lorg/zzf/core/f/g;-><init>(Lorg/zzf/core/f/f;)V

    const-string v1, "MTK\u82af\u7247"

    iput-object v1, v0, Lorg/zzf/core/f/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method public c()Lorg/zzf/core/f/g;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "com.android.internal.telephony.Phone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v1, "GEMINI_SIM_1"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    const-string v1, "GEMINI_SIM_2"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    new-instance v0, Lorg/zzf/core/f/g;

    invoke-direct {v0, p0}, Lorg/zzf/core/f/g;-><init>(Lorg/zzf/core/f/f;)V

    const-string v1, "MTK\u82af\u7247"

    iput-object v1, v0, Lorg/zzf/core/f/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method public d()Lorg/zzf/core/f/g;
    .locals 5

    :try_start_0
    const-string v0, "com.android.internal.telephony.PhoneFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getServiceName"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "phone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    new-instance v0, Lorg/zzf/core/f/g;

    invoke-direct {v0, p0}, Lorg/zzf/core/f/g;-><init>(Lorg/zzf/core/f/f;)V

    const-string v1, "\u5c55\u8baf\u82af\u7247"

    iput-object v1, v0, Lorg/zzf/core/f/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lorg/zzf/core/f/g;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v0, "getDeviceId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v0, "getSubscriberId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    aput-object v7, v0, v6

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    aput-object v7, v0, v6

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/zzf/core/f/f;->a:Ljava/lang/Integer;

    aput-object v6, v0, v4

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/zzf/core/f/f;->b:Ljava/lang/Integer;

    aput-object v6, v0, v4

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "getPreferredDataSubscription"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "isMultiSimEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    new-instance v0, Lorg/zzf/core/f/g;

    invoke-direct {v0, p0}, Lorg/zzf/core/f/g;-><init>(Lorg/zzf/core/f/f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ad8\u901a\u82af\u7247-getPreferredDataSubscription:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/zzf/core/f/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    iput-object v2, v0, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/zzf/core/f/f;->f:Ljava/lang/String;

    iput-object v2, v0, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    iget-object v2, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    iput-object v2, v0, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/zzf/core/f/f;->d:Ljava/lang/String;

    iput-object v2, v0, Lorg/zzf/core/f/g;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public f()Lorg/zzf/core/f/g;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/f/f;->g:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/zzf/core/f/g;

    invoke-direct {v0, p0}, Lorg/zzf/core/f/g;-><init>(Lorg/zzf/core/f/f;)V

    const-string v1, "\u5355\u5361\u82af\u7247"

    iput-object v1, v0, Lorg/zzf/core/f/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->e:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lorg/zzf/core/f/g;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/f/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lorg/zzf/core/f/g;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lorg/zzf/core/f/g;->d:Ljava/lang/String;

    goto :goto_0
.end method
