.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PasswordPrompt"
.end annotation


# instance fields
.field private cachedSize:I

.field private forgotPasswordUrl_:Ljava/lang/String;

.field private hasForgotPasswordUrl:Z

.field private hasPrompt:Z

.field private prompt_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2158
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->prompt_:Ljava/lang/String;

    .line 2180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    .line 2216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    .line 2158
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2219
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    if-gez v0, :cond_0

    .line 2221
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getSerializedSize()I

    .line 2223
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    return v0
.end method

.method public getForgotPasswordUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->prompt_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2230
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2233
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2234
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2237
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    .line 2238
    return v0
.end method

.method public hasForgotPasswordUrl()Z
    .locals 1

    .prologue
    .line 2182
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl:Z

    return v0
.end method

.method public hasPrompt()Z
    .locals 1

    .prologue
    .line 2165
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2246
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2247
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2251
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2252
    :sswitch_0
    return-object p0

    .line 2257
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->setPrompt(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    goto :goto_0

    .line 2261
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->setForgotPasswordUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    goto :goto_0

    .line 2247
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2155
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v0

    return-object v0
.end method

.method public setForgotPasswordUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .locals 1
    .parameter "value"

    .prologue
    .line 2184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl:Z

    .line 2185
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    .line 2186
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .locals 1
    .parameter "value"

    .prologue
    .line 2167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt:Z

    .line 2168
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->prompt_:Ljava/lang/String;

    .line 2169
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2208
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2209
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2211
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2212
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2214
    :cond_1
    return-void
.end method
