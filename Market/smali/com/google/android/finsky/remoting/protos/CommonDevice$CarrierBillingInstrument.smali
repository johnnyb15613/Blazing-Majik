.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingInstrument"
.end annotation


# instance fields
.field private acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

.field private accountType_:Ljava/lang/String;

.field private cachedSize:I

.field private credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

.field private currencyCode_:Ljava/lang/String;

.field private encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

.field private hasAcceptedCarrierTos:Z

.field private hasAccountType:Z

.field private hasCredentials:Z

.field private hasCurrencyCode:Z

.field private hasEncryptedSubscriberInfo:Z

.field private hasInstrumentKey:Z

.field private hasSubscriberIdentifier:Z

.field private hasTransactionLimit:Z

.field private instrumentKey_:Ljava/lang/String;

.field private subscriberIdentifier_:Ljava/lang/String;

.field private transactionLimit_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey_:Ljava/lang/String;

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->accountType_:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->currencyCode_:Ljava/lang/String;

    .line 952
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit_:J

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier_:Ljava/lang/String;

    .line 986
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    .line 1006
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    .line 1026
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 1089
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    .line 896
    return-void
.end method


# virtual methods
.method public getAcceptedCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->accountType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    if-gez v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getSerializedSize()I

    .line 1096
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    return v0
.end method

.method public getCredentials()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getInstrumentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1101
    const/4 v0, 0x0

    .line 1102
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getInstrumentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1111
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1115
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getTransactionLimit()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1119
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1122
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1123
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1126
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1127
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCredentials()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1130
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1131
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAcceptedCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    :cond_7
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    .line 1135
    return v0
.end method

.method public getSubscriberIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionLimit()J
    .locals 2

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit_:J

    return-wide v0
.end method

.method public hasAcceptedCarrierTos()Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos:Z

    return v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    return v0
.end method

.method public hasCredentials()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials:Z

    return v0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    return v0
.end method

.method public hasEncryptedSubscriberInfo()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo:Z

    return v0
.end method

.method public hasInstrumentKey()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    return v0
.end method

.method public hasSubscriberIdentifier()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    return v0
.end method

.method public hasTransactionLimit()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1144
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1148
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    :sswitch_0
    return-object p0

    .line 1154
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1158
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1162
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1166
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setTransactionLimit(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1170
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1174
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;-><init>()V

    .line 1175
    .local v1, value:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1176
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1180
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;-><init>()V

    .line 1181
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1182
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setCredentials(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1186
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 1187
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1188
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 893
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 1030
    if-nez p1, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1033
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos:Z

    .line 1034
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 1035
    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    .line 923
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->accountType_:Ljava/lang/String;

    .line 924
    return-object p0
.end method

.method public setCredentials(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 1010
    if-nez p1, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1013
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials:Z

    .line 1014
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    .line 1015
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    .line 940
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->currencyCode_:Ljava/lang/String;

    .line 941
    return-object p0
.end method

.method public setEncryptedSubscriberInfo(Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 990
    if-nez p1, :cond_0

    .line 991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 993
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo:Z

    .line 994
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    .line 995
    return-object p0
.end method

.method public setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    .line 906
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey_:Ljava/lang/String;

    .line 907
    return-object p0
.end method

.method public setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    .line 974
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier_:Ljava/lang/String;

    .line 975
    return-object p0
.end method

.method public setTransactionLimit(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    .line 957
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit_:J

    .line 958
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getInstrumentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1069
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1072
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1073
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getTransactionLimit()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1075
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1076
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1078
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1079
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1081
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1082
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCredentials()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1084
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAcceptedCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1087
    :cond_7
    return-void
.end method
