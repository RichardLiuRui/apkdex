.class public Lorg/zzf/core/f/i;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lorg/zzf/core/f/i;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lorg/zzf/core/d/ab;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/zzf/core/d/ab;->i:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/zzf/core/d/ab;->j:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/zzf/core/d/ab;->n:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/zzf/core/d/ab;->m:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/zzf/core/d/ab;->o:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/zzf/core/d/ab;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lorg/zzf/core/f/i;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 6

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mService"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMobileDataEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "=="

    const-string v2, "ClassNotFoundException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "=="

    const-string v2, "NoSuchFieldException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "=="

    const-string v2, "SecurityException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "=="

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "=="

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v1, "=="

    const-string v2, "IllegalAccessException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "=="

    const-string v2, "InvocationTargetException"

    invoke-static {v1, v2}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    sget v0, Lorg/zzf/core/f/i;->a:I

    if-eq v0, v2, :cond_0

    new-instance v0, Lorg/zzf/core/f/p;

    invoke-direct {v0, p0}, Lorg/zzf/core/f/p;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/zzf/core/f/i;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    sput v2, Lorg/zzf/core/f/i;->a:I

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lorg/zzf/core/f/p;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lorg/zzf/core/f/p;->b()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/zzf/core/f/i;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lorg/zzf/core/f/p;->b()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/zzf/core/f/i;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
