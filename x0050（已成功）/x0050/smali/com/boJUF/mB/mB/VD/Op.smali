.class public final Lcom/boJUF/mB/mB/VD/Op;
.super Landroid/os/AsyncTask;


# instance fields
.field private LA:Landroid/content/Context;

.field private On:Lcom/boJUF/mB/mB/mB/tQ;

.field private TP:Landroid/content/pm/PackageManager;

.field private cp:Lcom/boJUF/mB/mB/mB/uI;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    new-instance v0, Lcom/boJUF/mB/mB/mB/uI;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/mB/uI;-><init>()V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/boJUF/mB/mB/mB/uI;->D:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "is main thread\uff1a"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private IL()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/Op;
    .locals 1

    new-instance v0, Lcom/boJUF/mB/mB/VD/Op;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/VD/Op;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/Op;)Lcom/boJUF/mB/mB/mB/uI;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    return-object v0
.end method

.method private static LA()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_2
    const-string v1, "Processor\t:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static LA([B)[B
    .locals 10

    const/4 v9, 0x2

    invoke-static {p0, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    invoke-static {}, Lcom/boJUF/mB/mB/tP/mB/uI;->On()Ljava/lang/String;

    move-result-object v4

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x403a000000000000L    # 26.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static Lx()Ljava/lang/String;
    .locals 5

    const-string v0, "0000000000000000"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "cat /proc/cpuinfo"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/LineNumberReader;

    invoke-direct {v3, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "Serial"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static On()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "N/A"

    goto :goto_1
.end method

.method private static TP()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "N/A"

    goto :goto_1
.end method

.method private VY()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cp()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static na()I
    .locals 5

    const-string v1, "/proc/meminfo"

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static oC()Ljava/lang/String;
    .locals 7

    const-string v1, ""

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.version.baseband"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "no message"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_1
    const-string v2, "simSerial"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "simCountryIso"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceId"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/mB/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/tQ;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/ac;

    move-result-object v2

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    const-string v0, "deviceId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/boJUF/mB/mB/mB/uI;->cp:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->LA()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->On:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->On()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->TP:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->cp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->oC:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->TP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->na:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "wuqiyan"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8def\u5f84\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    iget-object v7, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    mul-long/2addr v3, v5

    invoke-static {v7, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->IL:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    iget-object v7, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    mul-long/2addr v3, v5

    invoke-static {v7, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->Lx:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->na()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->VY:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v4, "dalvik.vm.heapsize"

    invoke-static {v3, v4}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->sj:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v4, "dalvik.vm.heapstartsize"

    invoke-static {v3, v4}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->bh:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v4, "dalvik.vm.heapgrowthlimit"

    invoke-static {v3, v4}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->rC:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    const-string v0, "simState"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/boJUF/mB/mB/mB/uI;->gj:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    invoke-virtual {v3}, Lcom/boJUF/mB/mB/mB/tQ;->TP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/boJUF/mB/mB/mB/uI;->uv:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    const-string v0, "simSerial"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/boJUF/mB/mB/mB/uI;->Ab:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    const-string v0, "phoneType"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/boJUF/mB/mB/mB/uI;->Hm:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    const-string v0, "simCountryIso"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/boJUF/mB/mB/mB/uI;->Jl:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/tQ;->IL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->YM:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/tQ;->Lx()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->WW:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/tQ;->sj()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->th:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/tQ;->VY()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->oG:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->On:Lcom/boJUF/mB/mB/mB/tQ;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/tQ;->na()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->VM:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/mB/uI;->cp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->dn:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->LU:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->oC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->Bg:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->bE:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->ac:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->oM:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->vp:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->so:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v3, "ro.build.characteristics"

    invoke-static {v1, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->o:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->m:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.location.gps"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->n:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony.gsm"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->l:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->p:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->q:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.bluetooth"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->r:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->s:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->t:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.accessory"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boJUF/mB/mB/mB/uI;->u:Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v3, "persist.sys.timezone"

    invoke-static {v1, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    const-string v1, "android"

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/Op;->IL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v3, v3, Lcom/boJUF/mB/mB/mB/uI;->K:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Op;->TP:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Op;->Lx()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-wide v3, v2, Lcom/boJUF/mB/mB/VD/ac;->LA:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-wide v1, v2, Lcom/boJUF/mB/mB/VD/ac;->cp:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->N:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/Op;->VY()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v2, "pnum"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boJUF/mB/mB/mB/uI;->LA:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->cp:Lcom/boJUF/mB/mB/mB/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-static {}, Lcom/boJUF/mB/mB/tP/mB/uI;->cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/Op;->LA([B)[B

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v2, "Content-Length"

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    const-string v1, "upm"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v2, "simState"

    const-string v3, "SIM_STATE_ABSENT"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    :try_start_1
    const-string v2, "simState"

    const-string v3, "SIM_STATE_UNKNOWN"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "simState"

    const-string v3, "SIM_STATE_NETWORK_LOCKED"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "simState"

    const-string v3, "SIM_STATE_PIN_REQUIRED"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "simState"

    const-string v3, "SIM_STATE_PUK_REQUIRED"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "simState"

    const-string v3, "SIM_STATE_READY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "phoneType"

    const-string v3, "CDMA"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_7
    const-string v2, "phoneType"

    const-string v3, "GSM"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_8
    const-string v2, "phoneType"

    const-string v3, "SIP"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_9
    const-string v2, "phoneType"

    const-string v3, "NONE"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method protected final onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Op;->LA:Landroid/content/Context;

    new-instance v2, Lcom/boJUF/mB/mB/VD/ve;

    invoke-direct {v2, p0}, Lcom/boJUF/mB/mB/VD/ve;-><init>(Lcom/boJUF/mB/mB/VD/Op;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
