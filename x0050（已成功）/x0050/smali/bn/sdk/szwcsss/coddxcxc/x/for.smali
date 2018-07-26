.class public Lbn/sdk/szwcsss/coddxcxc/x/for;
.super Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/for;->b:Landroid/content/Context;

    return-void
.end method

.method private static aa(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "com.android.internal.telephony.Phone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v1, "GEMINI_SIM_1"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v3, "GEMINI_SIM_2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v5, "getDefault"

    invoke-static {v3, v5}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    const-string v8, "MTK\u82af\u7247"

    iput-object v8, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->for:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->cx:I

    iput-object v3, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    iput-object v7, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    iput-object v5, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    iput-object v6, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->for(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "getIMSI default : %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->while(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v1

    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->cx(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v3

    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->aa(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v4

    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->throw(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v5

    invoke-static {p0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->private(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;

    move-result-object v2

    const-string v6, "getIMSI default : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "getIMSI gaotong1 : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "getIMSI gaotong2 : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "getIMSI mtk1 : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "getIMSI mtk2 : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "getIMSI sprd : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    move-object v0, v4

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    move-object v0, v5

    goto :goto_0

    :cond_6
    if-nez v0, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    const-string v1, "default"

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v3

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private static cx(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "com.android.internal.telephony.Phone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v1, "GEMINI_SIM_1"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v3, "GEMINI_SIM_2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getSubscriberIdGemini"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-class v5, Landroid/telephony/TelephonyManager;

    const-string v7, "getDeviceIdGemini"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v5, v8

    invoke-virtual {v7, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v7}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    const-string v8, "MTK\u82af\u7247"

    iput-object v8, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->for:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->cx:I

    iput-object v5, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    iput-object v0, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    iput-object v3, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    iput-object v4, v7, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method private static for(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 4

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    const-string v3, "\u9ed8\u8ba4"

    iput-object v3, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    iput-object v2, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static private(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getDeviceId"

    invoke-static {v1, v4}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getSubscriberId"

    invoke-static {v1, v5}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v4, v6}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v4, v7}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v5, v6}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v7}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    const-string v4, "getPreferredDataSubscription"

    invoke-static {v1, v4}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v11, "isMultiSimEnabled"

    invoke-static {v1, v11}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v4, 0x0

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v4, v1

    move v1, v0

    :goto_0
    :try_start_3
    invoke-static {v10}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gaotong11 imsi_1 isnull"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move v0, v3

    :goto_2
    move v1, v3

    move v4, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u9ad8\u901a\u82af\u7247-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "-"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    iput v6, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->for:I

    iput v7, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->cx:I

    iput-object v8, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    iput-object v9, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    iput-object v10, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    iput-object v5, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "gaotong initQualcommDoubleSim exception : %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method private static throw(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "com.android.internal.telephony.PhoneFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getServiceName"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "phone"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    const-string v6, "\u5c55\u8baf\u82af\u7247"

    iput-object v6, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    iput-object v5, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    iput-object v3, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    iput-object v4, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method private static while(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 14

    const/4 v13, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v2, "getDeviceId"

    invoke-static {v0, v2}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v5, "getSubscriberId"

    invoke-static {v0, v5}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v2, v6}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v2, v7}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5, v6}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v5, v7}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    const-string v2, "getPreferredDataSubscription"

    invoke-static {v0, v2}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v11, "isMultiSimEnabled"

    invoke-static {v0, v11}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v11, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v4, v2

    move v2, v0

    :goto_0
    :try_start_3
    invoke-static {v10}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gaotong22 imsi_1 isnull"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move v0, v3

    :goto_2
    move v2, v3

    move v4, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/b;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u9ad8\u901a\u82af\u7247-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "-"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    iput v6, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->for:I

    iput v7, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->cx:I

    iput-object v8, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    iput-object v9, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    iput-object v10, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    iput-object v5, v0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "gaotong initQualcommDoubleSim exception : %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public b()Lbn/sdk/szwcsss/coddxcxc/x/b;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/for;->b:Landroid/content/Context;

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/x/for;->b(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
