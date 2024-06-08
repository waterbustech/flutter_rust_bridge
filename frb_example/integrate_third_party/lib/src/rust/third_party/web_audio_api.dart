// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../api/override_web_audio_api.dart';
import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'web_audio_api/node.dart';

// These types are ignored because they are not used by any `pub` functions: `AtomicF32`, `AtomicF64`, `ErrorEvent`, `MediaElement`, `MessagePort`
// These functions are ignored: `load`, `load`, `new`, `new`, `store`, `store`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioBuffer>>
abstract class AudioBuffer {
  /// Duration in seconds of the `AudioBuffer`
  Future<double> duration();

  /// Convert raw samples to an AudioBuffer
  ///
  /// The outer Vec determine the channels. The inner Vecs should have the same length.
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given sample rate is zero
  /// - the given number of channels defined by `samples.len()`is outside the
  ///   [1, 32] range, 32 being defined by the MAX_CHANNELS constant.
  /// - any of its items have different lengths
  static Future<AudioBuffer> from(
          {required List<Float32List> samples, required double sampleRate}) =>
      RustLib.instance.api
          .webAudioApiAudioBufferFrom(samples: samples, sampleRate: sampleRate);

  /// Return a read-only copy of the underlying data of the channel
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given channel number is greater than or equal to the given number of channels.
  Future<void> getChannelData({required BigInt channelNumber});

  /// Return a mutable slice of the underlying data of the channel
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given channel number is greater than or equal to the given number of channels.
  Future<void> getChannelDataMut({required BigInt channelNumber});

  /// Number of samples per channel in this `AudioBuffer`
  Future<BigInt> length();

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Allocate a silent audiobuffer with [`AudioBufferOptions`]
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given sample rate is zero
  /// - the given number of channels is outside the [1, 32] range,
  /// 32 being defined by the MAX_CHANNELS constant.
  static Future<AudioBuffer> newInstance(
          {required AudioBufferOptions options}) =>
      RustLib.instance.api.webAudioApiAudioBufferNew(options: options);

  /// Number of channels in this `AudioBuffer`
  Future<BigInt> numberOfChannels();

  /// Sample rate of this `AudioBuffer` in Hertz
  Future<double> sampleRate();

  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioListener>>
abstract class AudioListener {
  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioParam>>
abstract class AudioParam implements AudioNode, AudioParamExt {
  /// Current value of the automation rate of the AudioParam
  Future<AutomationRate> automationRate();

  /// Cancels all scheduled parameter changes with times greater than or equal
  /// to `cancel_time` and the automation value that would have happened at
  /// that time is then propagated for all future time.
  ///
  /// # Panics
  ///
  /// Will panic if `cancel_time` is negative
  Future<void> cancelAndHoldAtTime({required double cancelTime});

  /// Cancels all scheduled parameter changes with times greater than or equal
  /// to `cancel_time`.
  ///
  /// # Panics
  ///
  /// Will panic if `cancel_time` is negative
  Future<void> cancelScheduledValues({required double cancelTime});

  /// Config for up/down-mixing of input channels for this node.
  ///
  /// Only when implementing the [`AudioNode`] trait manually, this struct is of any concern.
  Future<void> channelConfig();

  /// Represents an integer used to determine how many channels are used when up-mixing and
  /// down-mixing connections to any inputs to the node.
  Future<BigInt> channelCount();

  /// Represents an enumerated value describing the way channels must be matched between the
  /// node's inputs and outputs.
  Future<ChannelCountMode> channelCountMode();

  /// Represents an enumerated value describing the meaning of the channels. This interpretation
  /// will define how audio up-mixing and down-mixing will happen.
  Future<ChannelInterpretation> channelInterpretation();

  /// Unset the callback to run when an unhandled exception occurs in the audio processor.
  Future<void> clearOnprocessorerror();

  /// The [`BaseAudioContext`](crate::context::BaseAudioContext) concrete type which owns this
  /// AudioNode.
  Future<void> context();

  Future<double> defaultValue();

  /// Disconnects all outgoing connections from the AudioNode.
  Future<void> disconnect();

  /// Disconnects all outgoing connections at the given output port from the AudioNode.
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - if the output port is out of bounds for this node
  Future<void> disconnectOutput({required BigInt output});

  /// Schedules an exponential continuous change in parameter value from the
  /// previous scheduled parameter value to the given value.
  ///
  /// # Panics
  ///
  /// Will panic if:
  /// - `value` is zero
  /// - `end_time` is negative
  Future<void> exponentialRampToValueAtTime(
      {required double value, required double endTime});

  /// Schedules a linear continuous change in parameter value from the
  /// previous scheduled parameter value to the given value.
  ///
  /// # Panics
  ///
  /// Will panic if `end_time` is negative
  Future<void> linearRampToValueAtTime(
      {required double value, required double endTime});

  Future<double> maxValue();

  Future<double> minValue();

  /// The number of inputs feeding into the AudioNode. For source nodes, this will be 0.
  Future<BigInt> numberOfInputs();

  /// The number of outputs coming out of the AudioNode.
  Future<BigInt> numberOfOutputs();

  /// Handle of the associated [`BaseAudioContext`](crate::context::BaseAudioContext).
  ///
  /// Only when implementing the AudioNode trait manually, this struct is of any concern.
  Future<void> registration();

  /// Update the current value of the automation rate of the AudioParam
  ///
  /// # Panics
  ///
  /// Some nodes have automation rate constraints and may panic when updating the value.
  Future<void> setAutomationRate({required AutomationRate value});

  /// Update the `channel_count` attribute
  Future<void> setChannelCount({required BigInt v});

  /// Update the `channel_count_mode` attribute
  Future<void> setChannelCountMode({required ChannelCountMode v});

  /// Update the `channel_interpretation` attribute
  Future<void> setChannelInterpretation({required ChannelInterpretation v});

  /// Start exponentially approaching the target value at the given time with
  /// a rate having the given time constant.
  ///
  /// # Panics
  ///
  /// Will panic if:
  /// - `start_time` is negative
  /// - `time_constant` is negative
  Future<void> setTargetAtTime(
      {required double value,
      required double startTime,
      required double timeConstant});

  /// Set the value of the `AudioParam`.
  ///
  /// Is equivalent to calling the `set_value_at_time` method with the current
  /// AudioContext's currentTime
  Future<void> setValue({required double value});

  /// Schedules a parameter value change at the given time.
  ///
  /// # Panics
  ///
  /// Will panic if `start_time` is negative
  Future<void> setValueAtTime(
      {required double value, required double startTime});

  /// Sets an array of arbitrary parameter values starting at the given time
  /// for the given duration.
  ///
  /// # Panics
  ///
  /// Will panic if:
  /// - `value` length is less than 2
  /// - `start_time` is negative
  /// - `duration` is negative or equal to zero
  Future<void> setValueCurveAtTime(
      {required List<double> values,
      required double startTime,
      required double duration});

  /// Retrieve the current value of the `AudioParam`.
  Future<double> value();

  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioProcessingEvent>>
abstract class AudioProcessingEvent {
  AudioBuffer get inputBuffer;

  AudioBuffer get outputBuffer;

  double get playbackTime;

  void set inputBuffer(AudioBuffer inputBuffer);

  void set outputBuffer(AudioBuffer outputBuffer);

  void set playbackTime(double playbackTime);

  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioRenderCapacity>>
abstract class AudioRenderCapacity {
  /// Unset the EventHandler for [`AudioRenderCapacityEvent`].
  Future<void> clearOnupdate();

  /// Start metric collection and analysis
  Future<void> start({required AudioRenderCapacityOptions options});

  /// Stop metric collection and analysis
  Future<void> stop();

  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioRenderCapacityEvent>>
abstract class AudioRenderCapacityEvent {
  double get averageLoad;

  Event get event;

  double get peakLoad;

  double get timestamp;

  double get underrunRatio;

  void set averageLoad(double averageLoad);

  void set event(Event event);

  void set peakLoad(double peakLoad);

  void set timestamp(double timestamp);

  void set underrunRatio(double underrunRatio);

  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Event>>
abstract class Event {
  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OfflineAudioCompletionEvent>>
abstract class OfflineAudioCompletionEvent {
  Event get event;

  AudioBuffer get renderedBuffer;

  void set event(Event event);

  void set renderedBuffer(AudioBuffer renderedBuffer);

  void dispose();

  bool get isDisposed;
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<PeriodicWave>>
abstract class PeriodicWave {
  void dispose();

  bool get isDisposed;
}

/// Options for constructing an [`AudioBuffer`]
class AudioBufferOptions {
  /// The number of channels for the buffer
  final BigInt numberOfChannels;

  /// The length in sample frames of the buffer
  final BigInt length;

  /// The sample rate in Hz for the buffer
  final double sampleRate;

  const AudioBufferOptions({
    required this.numberOfChannels,
    required this.length,
    required this.sampleRate,
  });

  @override
  int get hashCode =>
      numberOfChannels.hashCode ^ length.hashCode ^ sampleRate.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioBufferOptions &&
          runtimeType == other.runtimeType &&
          numberOfChannels == other.numberOfChannels &&
          length == other.length &&
          sampleRate == other.sampleRate;
}

/// Options for constructing an [`AudioParam`]
class AudioParamDescriptor {
  final String name;
  final AutomationRate automationRate;
  final double defaultValue;
  final double minValue;
  final double maxValue;

  const AudioParamDescriptor({
    required this.name,
    required this.automationRate,
    required this.defaultValue,
    required this.minValue,
    required this.maxValue,
  });

  @override
  int get hashCode =>
      name.hashCode ^
      automationRate.hashCode ^
      defaultValue.hashCode ^
      minValue.hashCode ^
      maxValue.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioParamDescriptor &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          automationRate == other.automationRate &&
          defaultValue == other.defaultValue &&
          minValue == other.minValue &&
          maxValue == other.maxValue;
}

/// Options for constructing an `AudioRenderCapacity`
class AudioRenderCapacityOptions {
  /// An update interval (in seconds) for dispatching [`AudioRenderCapacityEvent`]s
  final double updateInterval;

  const AudioRenderCapacityOptions({
    required this.updateInterval,
  });

  @override
  int get hashCode => updateInterval.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioRenderCapacityOptions &&
          runtimeType == other.runtimeType &&
          updateInterval == other.updateInterval;
}

/// Precision of AudioParam value calculation per render quantum
enum AutomationRate {
  /// Audio Rate - sampled for each sample-frame of the block
  a,

  /// Control Rate - sampled at the time of the very first sample-frame,
  /// then used for the entire block
  k,
  ;
}

/// Options for constructing a [`PeriodicWave`]
class PeriodicWaveOptions {
  /// The real parameter represents an array of cosine terms of Fourier series.
  ///
  /// The first element (index 0) represents the DC-offset.
  /// This offset has to be given but will not be taken into account
  /// to build the custom periodic waveform.
  ///
  /// The following elements (index 1 and more) represent the fundamental and
  /// harmonics of the periodic waveform.
  final Float32List? real;

  /// The imag parameter represents an array of sine terms of Fourier series.
  ///
  /// The first element (index 0) will not be taken into account
  /// to build the custom periodic waveform.
  ///
  /// The following elements (index 1 and more) represent the fundamental and
  /// harmonics of the periodic waveform.
  final Float32List? imag;

  /// By default PeriodicWave is build with normalization enabled (disable_normalization = false).
  /// In this case, a peak normalization is applied to the given custom periodic waveform.
  ///
  /// If disable_normalization is enabled (disable_normalization = true), the normalization is
  /// defined by the periodic waveform characteristics (img, and real fields).
  final bool disableNormalization;

  const PeriodicWaveOptions({
    this.real,
    this.imag,
    required this.disableNormalization,
  });

  @override
  int get hashCode =>
      real.hashCode ^ imag.hashCode ^ disableNormalization.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeriodicWaveOptions &&
          runtimeType == other.runtimeType &&
          real == other.real &&
          imag == other.imag &&
          disableNormalization == other.disableNormalization;
}
