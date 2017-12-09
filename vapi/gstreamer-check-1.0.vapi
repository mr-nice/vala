/* gstreamer-check-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstCheck", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace Check {
		[CCode (cheader_filename = "gst/check/check.h", cname = "GstHarnessThread", has_type_id = false)]
		[Compact]
		[GIR (name = "HarnessThread")]
		[Version (since = "1.6")]
		public class HarnessThread {
		}
		[CCode (cheader_filename = "gst/check/check.h", has_type_id = false)]
		[Compact]
		[GIR (name = "CheckLogFilter")]
		public class LogFilter {
		}
		[CCode (cheader_filename = "gst/check/gstbufferstraw.h,gst/check/gstcheck.h,gst/check/gstconsistencychecker.h,gst/check/internal-check.h", cname = "GstStreamConsistency", has_type_id = false, lower_case_cprefix = "gst_consistency_checker_")]
		[Compact]
		[GIR (name = "StreamConsistency")]
		public class StreamConsistency {
			public StreamConsistency (Gst.Pad pad);
			public bool add_pad (Gst.Pad pad);
			public void free ();
			public void reset ();
		}
		[CCode (cheader_filename = "gst/check/check.h", cname = "GstTestClock", lower_case_cprefix = "gst_test_clock_", type_id = "gst_test_clock_get_type ()")]
		[GIR (name = "TestClock")]
		[Version (since = "1.2")]
		public class TestClock : Gst.Clock {
			[CCode (has_construct_function = false, type = "GstClock*")]
			public TestClock ();
			public void advance_time (Gst.ClockTimeDiff delta);
			[Version (since = "1.8")]
			public bool crank ();
			public Gst.ClockTime get_next_entry_time ();
			public bool has_id (Gst.ClockID id);
			[Version (since = "1.4")]
			public static Gst.ClockTime id_list_get_latest_time (GLib.List<Gst.ClockID?>? pending_list);
			public uint peek_id_count ();
			public bool peek_next_pending_id (out Gst.ClockID pending_id);
			[Version (since = "1.4")]
			public uint process_id_list (GLib.List<Gst.ClockID?>? pending_list);
			public Gst.ClockID process_next_clock_id ();
			public void set_time (Gst.ClockTime new_time);
			[Version (since = "1.4")]
			public void wait_for_multiple_pending_ids (uint count, out GLib.List<Gst.ClockID?> pending_list);
			public void wait_for_next_pending_id (out Gst.ClockID pending_id);
			[Version (deprecated = true, since = "1.2")]
			public void wait_for_pending_id_count (uint count);
			[CCode (has_construct_function = false, type = "GstClock*")]
			public TestClock.with_start_time (Gst.ClockTime start_time);
			[NoAccessorMethod]
			public Gst.ClockType clock_type { get; set; }
			[NoAccessorMethod]
			public uint64 start_time { get; construct; }
		}
		[CCode (cheader_filename = "gst/check/check.h", has_type_id = false)]
		[GIR (name = "CheckABIStruct")]
		public struct ABIStruct {
			public weak string name;
			public int size;
			public int abi_size;
		}
		[CCode (cheader_filename = "gst/check/check.h", cname = "GstHarness", has_type_id = false)]
		[GIR (name = "Harness")]
		[Version (since = "1.6")]
		public struct Harness {
			public weak Gst.Element element;
			public weak Gst.Pad srcpad;
			public weak Gst.Pad sinkpad;
			[CCode (cname = "gst_harness_add_element_sink_pad")]
			public void add_element_sink_pad (Gst.Pad sinkpad);
			[CCode (cname = "gst_harness_add_element_src_pad")]
			public void add_element_src_pad (Gst.Pad srcpad);
			[CCode (cname = "gst_harness_add_probe")]
			public void add_probe (string element_name, string pad_name, Gst.PadProbeType mask, owned Gst.PadProbeCallback callback);
			[CCode (cname = "gst_harness_add_sink")]
			public void add_sink (string sink_element_name);
			[CCode (cname = "gst_harness_add_sink_harness")]
			public void add_sink_harness (owned Gst.Check.Harness sink_harness);
			[CCode (cname = "gst_harness_add_sink_parse")]
			public void add_sink_parse (string launchline);
			[CCode (cname = "gst_harness_add_src")]
			public void add_src (string src_element_name, bool has_clock_wait);
			[CCode (cname = "gst_harness_add_src_harness")]
			public void add_src_harness (owned Gst.Check.Harness src_harness, bool has_clock_wait);
			[CCode (cname = "gst_harness_add_src_parse")]
			public void add_src_parse (string launchline, bool has_clock_wait);
			[CCode (cname = "gst_harness_buffers_in_queue")]
			public uint buffers_in_queue ();
			[CCode (cname = "gst_harness_buffers_received")]
			public uint buffers_received ();
			[CCode (cname = "gst_harness_crank_multiple_clock_waits")]
			public bool crank_multiple_clock_waits (uint waits);
			[CCode (cname = "gst_harness_crank_single_clock_wait")]
			public bool crank_single_clock_wait ();
			[CCode (cname = "gst_harness_create_buffer")]
			public Gst.Buffer create_buffer (size_t size);
			[CCode (cname = "gst_harness_dump_to_file")]
			public void dump_to_file (string filename);
			[CCode (cname = "gst_harness_events_in_queue")]
			public uint events_in_queue ();
			[CCode (cname = "gst_harness_events_received")]
			public uint events_received ();
			[CCode (cname = "gst_harness_find_element")]
			public Gst.Element? find_element (string element_name);
			[CCode (cname = "gst_harness_get_allocator")]
			public void get_allocator (out unowned Gst.Allocator allocator, out Gst.AllocationParams @params);
			[CCode (cname = "gst_harness_get_last_pushed_timestamp")]
			public Gst.ClockTime get_last_pushed_timestamp ();
			[CCode (cname = "gst_harness_get_testclock")]
			public Gst.Check.TestClock get_testclock ();
			[CCode (cname = "gst_harness_play")]
			public void play ();
			[CCode (cname = "gst_harness_pull")]
			public Gst.Buffer pull ();
			[CCode (cname = "gst_harness_pull_event")]
			public Gst.Event pull_event ();
			[CCode (cname = "gst_harness_pull_upstream_event")]
			public Gst.Event pull_upstream_event ();
			[CCode (cname = "gst_harness_push")]
			public Gst.FlowReturn push (Gst.Buffer buffer);
			[CCode (cname = "gst_harness_push_and_pull")]
			public Gst.Buffer push_and_pull (Gst.Buffer buffer);
			[CCode (cname = "gst_harness_push_event")]
			public bool push_event (Gst.Event event);
			[CCode (cname = "gst_harness_push_from_src")]
			public Gst.FlowReturn push_from_src ();
			[CCode (cname = "gst_harness_push_to_sink")]
			public Gst.FlowReturn push_to_sink ();
			[CCode (cname = "gst_harness_push_upstream_event")]
			public bool push_upstream_event (Gst.Event event);
			[CCode (cname = "gst_harness_query_latency")]
			public Gst.ClockTime query_latency ();
			[CCode (cname = "gst_harness_set_blocking_push_mode")]
			public void set_blocking_push_mode ();
			[CCode (cname = "gst_harness_set_caps")]
			public void set_caps (owned Gst.Caps @in, owned Gst.Caps @out);
			[CCode (cname = "gst_harness_set_caps_str")]
			public void set_caps_str (string @in, string @out);
			[CCode (cname = "gst_harness_set_drop_buffers")]
			public void set_drop_buffers (bool drop_buffers);
			[CCode (cname = "gst_harness_set_forwarding")]
			public void set_forwarding (bool forwarding);
			[CCode (cname = "gst_harness_set_propose_allocator")]
			public void set_propose_allocator (owned Gst.Allocator? allocator, Gst.AllocationParams? @params);
			[CCode (cname = "gst_harness_set_sink_caps")]
			public void set_sink_caps (owned Gst.Caps caps);
			[CCode (cname = "gst_harness_set_sink_caps_str")]
			public void set_sink_caps_str (string str);
			[CCode (cname = "gst_harness_set_src_caps")]
			public void set_src_caps (owned Gst.Caps caps);
			[CCode (cname = "gst_harness_set_src_caps_str")]
			public void set_src_caps_str (string str);
			[CCode (cname = "gst_harness_set_time")]
			public bool set_time (Gst.ClockTime time);
			[CCode (cname = "gst_harness_set_upstream_latency")]
			public void set_upstream_latency (Gst.ClockTime latency);
			[CCode (cname = "gst_harness_sink_push_many")]
			public Gst.FlowReturn sink_push_many (int pushes);
			[CCode (cname = "gst_harness_src_crank_and_push_many")]
			public Gst.FlowReturn src_crank_and_push_many (int cranks, int pushes);
			[CCode (cname = "gst_harness_src_push_event")]
			public bool src_push_event ();
			[CCode (cname = "gst_harness_take_all_data_as_buffer")]
			[Version (since = "1.14")]
			public Gst.Buffer take_all_data_as_buffer ();
			[CCode (cname = "gst_harness_take_all_data_as_bytes")]
			[Version (since = "1.14")]
			public GLib.Bytes take_all_data_as_bytes ();
			[CCode (cname = "gst_harness_teardown")]
			public void teardown ();
			[CCode (cname = "gst_harness_try_pull")]
			public Gst.Buffer try_pull ();
			[CCode (cname = "gst_harness_try_pull_event")]
			public Gst.Event try_pull_event ();
			[CCode (cname = "gst_harness_try_pull_upstream_event")]
			public Gst.Event try_pull_upstream_event ();
			[CCode (cname = "gst_harness_upstream_events_in_queue")]
			public uint upstream_events_in_queue ();
			[CCode (cname = "gst_harness_upstream_events_received")]
			public uint upstream_events_received ();
			[CCode (cname = "gst_harness_use_systemclock")]
			public void use_systemclock ();
			[CCode (cname = "gst_harness_use_testclock")]
			public void use_testclock ();
			[CCode (cname = "gst_harness_wait_for_clock_id_waits")]
			public bool wait_for_clock_id_waits (uint waits, uint timeout);
		}
		[CCode (cheader_filename = "gst/check/check.h", cname = "GstHarnessPrepareBufferFunc", has_target = false)]
		[Version (since = "1.6")]
		public delegate Gst.Buffer HarnessPrepareBufferFunc (Gst.Check.Harness h, void* data);
		[CCode (cheader_filename = "gst/check/check.h", cname = "GstHarnessPrepareEventFunc", has_target = false)]
		[Version (since = "1.8")]
		public delegate Gst.Event HarnessPrepareEventFunc (Gst.Check.Harness h, void* data);
		[CCode (cheader_filename = "gst/check/check.h", instance_pos = 3.9)]
		[Version (since = "1.12")]
		public delegate bool LogFilterFunc (string log_domain, GLib.LogLevelFlags log_level, string message);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void abi_list (Gst.Check.ABIStruct list, bool have_abi_sizes);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void buffer_data (Gst.Buffer buffer, void* data, size_t size);
		[CCode (cheader_filename = "gst/check/check.h", cname = "gst_buffer_straw_get_buffer")]
		public static Gst.Buffer buffer_straw_get_buffer (Gst.Element bin, Gst.Pad pad);
		[CCode (cheader_filename = "gst/check/check.h", cname = "gst_buffer_straw_start_pipeline")]
		public static void buffer_straw_start_pipeline (Gst.Element bin, Gst.Pad pad);
		[CCode (cheader_filename = "gst/check/check.h", cname = "gst_buffer_straw_stop_pipeline")]
		public static void buffer_straw_stop_pipeline (Gst.Element bin, Gst.Pad pad);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void caps_equal (Gst.Caps caps1, Gst.Caps caps2);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static Gst.FlowReturn chain_func (Gst.Pad pad, Gst.Object parent, Gst.Buffer buffer);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.12")]
		public static void clear_log_filter ();
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void drop_buffers ();
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void element_push_buffer (string element_name, Gst.Buffer buffer_in, Gst.Caps caps_in, Gst.Buffer buffer_out, Gst.Caps caps_out);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void element_push_buffer_list (string element_name, owned GLib.List<Gst.Buffer> buffer_in, Gst.Caps caps_in, owned GLib.List<Gst.Buffer> buffer_out, Gst.Caps caps_out, Gst.FlowReturn last_flow_return);
		[CCode (cheader_filename = "gst/check/check.h", cname = "gst_harness_stress_thread_stop")]
		[Version (since = "1.6")]
		public static uint harness_stress_thread_stop (Gst.Check.HarnessThread t);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void init (int argc, string argv);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void message_error (Gst.Message message, Gst.MessageType type, GLib.Quark domain, int code);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.6")]
		public static void object_destroyed_on_unref (void* object_to_unref);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.12")]
		public static void remove_log_filter (Gst.Check.LogFilter filter);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static Gst.Element setup_element (string factory);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void setup_events (Gst.Pad srcpad, Gst.Element element, Gst.Caps? caps, Gst.Format format);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void setup_events_with_stream_id (Gst.Pad srcpad, Gst.Element element, Gst.Caps? caps, Gst.Format format, string stream_id);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static Gst.Pad setup_sink_pad (Gst.Element element, Gst.StaticPadTemplate tmpl);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static Gst.Pad setup_sink_pad_by_name (Gst.Element element, Gst.StaticPadTemplate tmpl, string name);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.4")]
		public static Gst.Pad setup_sink_pad_by_name_from_template (Gst.Element element, Gst.PadTemplate tmpl, string name);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.4")]
		public static Gst.Pad setup_sink_pad_from_template (Gst.Element element, Gst.PadTemplate tmpl);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static Gst.Pad setup_src_pad (Gst.Element element, Gst.StaticPadTemplate tmpl);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static Gst.Pad setup_src_pad_by_name (Gst.Element element, Gst.StaticPadTemplate tmpl, string name);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.4")]
		public static Gst.Pad setup_src_pad_by_name_from_template (Gst.Element element, Gst.PadTemplate tmpl, string name);
		[CCode (cheader_filename = "gst/check/check.h")]
		[Version (since = "1.4")]
		public static Gst.Pad setup_src_pad_from_template (Gst.Element element, Gst.PadTemplate tmpl);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void teardown_element (Gst.Element element);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void teardown_pad_by_name (Gst.Element element, string name);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void teardown_sink_pad (Gst.Element element);
		[CCode (cheader_filename = "gst/check/check.h")]
		public static void teardown_src_pad (Gst.Element element);
	}
}
